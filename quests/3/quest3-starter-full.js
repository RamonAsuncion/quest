class Renderer {
  constructor(canvas) {
    this._canvas = canvas;
    this._objects = [];
    this._clearColor = { r: 0.0, g: 0.0, b: 0.0, a: 1.0 };
  }
  async init() {
    if (!navigator.gpu) {
      throw Error("WebGPU is not supported in this browser.");
    }
    const adapter = await navigator.gpu.requestAdapter();
    if (!adapter) {
      throw Error("Couldn't request WebGPU adapter.");
    }
    this._device = await adapter.requestDevice();
    this._context = this._canvas.getContext("webgpu");
    this._canvasFormat = navigator.gpu.getPreferredCanvasFormat();
    this._context.configure({
      device: this._device,
      format: this._canvasFormat,
    });
    this.resizeCanvas();
    window.addEventListener("resize", this.resizeCanvas.bind(this));
  }
  resizeCanvas() {
    const devicePixelRatio = window.devicePixelRatio || 1;
    const width = window.innerWidth * devicePixelRatio;
    const height = window.innerHeight * devicePixelRatio;
    this._canvas.width = width;
    this._canvas.height = height;
    this._canvas.style.width = `${window.innerWidth}px`;
    this._canvas.style.height = `${window.innerHeight}px`;
    this._canvas.style.transformOrigin = "center";
    this.render();
  }
  async appendSceneObject(obj) {
    await obj.init();
    this._objects.push(obj);
  }
  renderToSelectedView(outputView) {
    for (const obj of this._objects) {
      obj?.updateGeometry();
    }
    let encoder = this._device.createCommandEncoder();
    const pass = encoder.beginRenderPass({
      colorAttachments: [
        {
          view: outputView,
          clearValue: this._clearColor,
          loadOp: "clear",
          storeOp: "store",
        },
      ],
    });
    for (const obj of this._objects) {
      obj?.render(pass);
    }
    pass.end();
    const computePass = encoder.beginComputePass();
    for (const obj of this._objects) {
      obj?.compute(computePass);
    }
    computePass.end();
    const commandBuffer = encoder.finish();
    this._device.queue.submit([commandBuffer]);
  }
  render() {
    this.renderToSelectedView(this._context.getCurrentTexture().createView());
  }
}
class PGA2D {
  static geometricProduct(a, b) {
    return [
      a[0] * b[0] - a[1] * b[1],
      a[0] * b[1] + a[1] * b[0],
      a[0] * b[2] + a[1] * b[3] + a[2] * b[0] - a[3] * b[1],
      a[0] * b[3] - a[1] * b[2] + a[2] * b[1] + a[3] * b[0],
    ];
  }
  static reverse(a) {
    return [a[0], -a[1], -a[2], -a[3]];
  }
  static applyMotor(p, m) {
    return PGA2D.geometricProduct(
      m,
      PGA2D.geometricProduct(p, PGA2D.reverse(m))
    );
  }
  static motorNorm(m) {
    return Math.sqrt(m[0] * m[0] + m[1] * m[1] + m[2] * m[2] + m[3] * m[3]);
  }
  static createTranslator(dx, dy) {
    return [1, 0, dy / 2, -dx / 2];
  }
  static createRotor(angle, cx = 0, cy = 0) {
    return [
      Math.cos(angle / 2),
      -Math.sin(angle / 2),
      -cx * Math.sin(angle / 2),
      -cy * Math.sin(angle / 2),
    ];
  }
  static normalizeMotor(m) {
    let mnorm = PGA2D.motorNorm(m);
    if (mnorm == 0.0) {
      return [1, 0, 0, 0];
    }
    return [m[0] / mnorm, m[1] / mnorm, m[2] / mnorm, m[3] / mnorm];
  }
  static applyMotorToPoint(p, m) {
    let new_p = PGA2D.applyMotor([0, 1, p[0], p[1]], m);
    return [new_p[2] / new_p[1], new_p[3] / new_p[1]];
  }
}
class Camera {
  constructor() {
    this._pose = new Float32Array([1, 0, 0, 0, 1, 1]);
  }
  resetPose() {
    this._pose[0] = 1;
    this._pose[1] = 0;
    this._pose[2] = 0;
    this._pose[3] = 0;
    this._pose[4] = 1;
    this._pose[5] = 1;
  }
  updatePose(newpose) {
    this._pose[0] = newpose[0];
    this._pose[1] = newpose[1];
    this._pose[2] = newpose[2];
    this._pose[3] = newpose[3];
  }
  moveLeft(d) {
    console.log(`
    Move Left: Pose 1 ${this._pose[0]},
    Move Left: Pose 2 ${this._pose[1]},
    Move Left: Pose 3 ${this._pose[2]},
    Move Left: Pose 4 ${this._pose[3]}
    `);
    let dt = PGA2D.createTranslator(-d, 0);
    let newpose = PGA2D.normalizeMotor(
      PGA2D.geometricProduct(dt, [
        this._pose[0],
        this._pose[1],
        this._pose[2],
        this._pose[3],
      ])
    );
    this.updatePose(newpose);
  }
  moveRight(d) {
    console.log(`
    Move Right: Pose 1 ${this._pose[0]},
    Move Right: Pose 2 ${this._pose[1]},
    Move Right: Pose 3 ${this._pose[2]},
    Move Right: Pose 4 ${this._pose[3]}
    `);
    let dt = PGA2D.createTranslator(d, 0);
    let newpose = PGA2D.normalizeMotor(
      PGA2D.geometricProduct(dt, [
        this._pose[0],
        this._pose[1],
        this._pose[2],
        this._pose[3],
      ])
    );
    this.updatePose(newpose);
  }
  moveUp(d) {
    console.log(`
    Move Up: Pose 1 ${this._pose[0]},
    Move Up: Pose 2 ${this._pose[1]},
    Move Up: Pose 3 ${this._pose[2]},
    Move Up: Pose 4 ${this._pose[3]}
    `);
    let dt = PGA2D.createTranslator(0, d);
    let newpose = PGA2D.normalizeMotor(
      PGA2D.geometricProduct(dt, [
        this._pose[0],
        this._pose[1],
        this._pose[2],
        this._pose[3],
      ])
    );
    this.updatePose(newpose);
  }
  moveDown(d) {
    console.log(`
    Move Down: Pose 1 ${this._pose[0]},
    Move Down: Pose 2 ${this._pose[1]},
    Move Down: Pose 3 ${this._pose[2]},
    Move Down: Pose 4 ${this._pose[3]}
    `);
    let dt = PGA2D.createTranslator(0, -d);
    let newpose = PGA2D.normalizeMotor(
      PGA2D.geometricProduct(dt, [
        this._pose[0],
        this._pose[1],
        this._pose[2],
        this._pose[3],
      ])
    );
    this.updatePose(newpose);
  }
  zoomIn() {
    const maxZoom = 10.0;
    const increment = 0.5;
    if (
      this._pose[4] + increment <= maxZoom &&
      this._pose[5] + increment <= maxZoom
    ) {
      this._pose[4] += increment;
      this._pose[5] += increment;
      console.log(`Current scale: ${this._pose[4]}`);
    }
  }
  zoomOut() {
    const minScale = 1.0;
    const increment = 0.5;
    if (
      this._pose[4] - increment >= minScale &&
      this._pose[5] - increment >= minScale
    ) {
      if (this._pose[4] - increment < 1.1) {
        this._pose[2] = 0;
        this._pose[3] = 0;
      }
      this._pose[4] -= increment;
      this._pose[5] -= increment;
      console.log(`Current scale: ${this._pose[4]}`);
    }
  }
}
class SceneObject {
  static _objectCnt = 0;
  constructor(device, canvasFormat) {
    if (this.constructor == SceneObject) {
      throw new Error("Abstract classes can't be instantiated.");
    }
    this._device = device;
    this._canvasFormat = canvasFormat;
    SceneObject._objectCnt += 1;
  }
  getName() {
    return this.constructor.name + " " + SceneObject._objectCnt.toString();
  }
  async init() {
    await this.createGeometry();
    await this.createShaders();
    await this.createRenderPipeline();
    await this.createComputePipeline();
  }
  async createGeometry() {
    throw new Error("Method 'createGeometry()' must be implemented.");
  }
  updateGeometry() {}
  loadShader(filename) {
    return new Promise((resolve, reject) => {
      const xhttp = new XMLHttpRequest();
      xhttp.open("GET", filename);
      xhttp.setRequestHeader("Cache-Control", "no-cache, no-store, max-age=0");
      xhttp.onload = function () {
        if (xhttp.readyState === XMLHttpRequest.DONE && xhttp.status === 200) {
          resolve(xhttp.responseText);
        } else {
          reject({ status: xhttp.status, statusText: xhttp.statusText });
        }
      };
      xhttp.onerror = function () {
        reject({ status: xhttp.status, statusText: xhttp.statusText });
      };
      xhttp.send();
    });
  }
  async createShaders() {
    throw new Error("Method 'createShaders()' must be implemented.");
  }
  async createRenderPipeline() {
    throw new Error("Method 'createRenderPipeline()' must be implemented.");
  }
  render(pass) {
    throw new Error("Method 'render(pass)' must be implemented.");
  }
  async createComputePipeline() {
    throw new Error("Method 'createComputePipeline()' must be implemented.");
  }
  compute(pass) {
    throw new Error("Method 'compute(pass)' must be implemented.");
  }
}
class CameraLineStrip2DAliveDeadObject extends SceneObject {
  constructor(device, canvasFormat, cameraPose, vertices) {
    super(device, canvasFormat);
    this._cameraPose = cameraPose;
    if (typeof this._vertices === Float32Array) this._vertices = vertices;
    else this._vertices = new Float32Array(vertices);
    this._isPaused = false;
    this._gridSize = 1048;
    this._simulationSpeed = 0.5;
    this._frameCounter = 0;
    this._ODDS = 0.35;
    this._isDragging = false;
    this._draggedCellType = null;
    this._draggedCellOrigin = { x: -1, y: -1 };
    this._draggedCellCurrent = { x: -1, y: -1 };
  }
  async createGeometry() {
    this._vertexBuffer = this._device.createBuffer({
      label: "Vertices " + this.getName(),
      size: this._vertices.byteLength,
      usage: GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST,
    });
    this._device.queue.writeBuffer(this._vertexBuffer, 0, this._vertices);
    this._vertexBufferLayout = {
      arrayStride: 2 * Float32Array.BYTES_PER_ELEMENT,
      attributes: [{ shaderLocation: 0, format: "float32x2", offset: 0 }],
    };
    this._cameraPoseBuffer = this._device.createBuffer({
      label: "Camera Pose " + this.getName(),
      size: this._cameraPose.byteLength,
      usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST,
    });
    this._device.queue.writeBuffer(this._cameraPoseBuffer, 0, this._cameraPose);
    this._cellStatus = new Uint32Array(this._gridSize * this._gridSize);
    for (let i = 0; i < this._cellStatus.length; i++) {
      this._cellStatus[i] = Math.random() > this._ODDS ? 1 : 0;
    }
    const neverDeadCount = 750;
    for (let i = 0; i < neverDeadCount; i++) {
      const x = Math.floor(Math.random() * this._gridSize);
      const y = Math.floor(Math.random() * this._gridSize);
      this._cellStatus[y * this._gridSize + x] = 2;
    }
    this._cellStateBuffers = [
      this._device.createBuffer({
        label: "Grid status Buffer 1 " + this.getName(),
        size: this._cellStatus.byteLength,
        usage:
          GPUBufferUsage.STORAGE |
          GPUBufferUsage.COPY_DST |
          GPUBufferUsage.COPY_SRC,
      }),
      this._device.createBuffer({
        label: "Grid status Buffer 2 " + this.getName(),
        size: this._cellStatus.byteLength,
        usage:
          GPUBufferUsage.STORAGE |
          GPUBufferUsage.COPY_DST |
          GPUBufferUsage.COPY_SRC,
      }),
    ];
    this._gridSizeBuffer = this._device.createBuffer({
      label: "Grid Size " + this.getName(),
      size: 4,
      usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST,
    });
    const gridSizeArray = new Uint32Array([this._gridSize]);
    this._device.queue.writeBuffer(this._gridSizeBuffer, 0, gridSizeArray);
    this._device.queue.writeBuffer(
      this._cellStateBuffers[0],
      0,
      this._cellStatus
    );
    this._step = 0;
  }
  speedUp() {
    this._simulationSpeed = Math.min(2, this._simulationSpeed * 1.25);
    console.log("Simulation speed:", this._simulationSpeed);
  }
  slowDown() {
    this._simulationSpeed = Math.max(0.005, this._simulationSpeed / 1.25);
    console.log("Simulation speed:", this._simulationSpeed);
  }
  pauseGrid() {
    this._isPaused = !this._isPaused;
  }
  toggleCellAt(x, y) {
    const cX = this._cameraPose[2];
    const cY = this._cameraPose[3];
    const cScale = this._cameraPose[4];
    console.log("Camera Position:", this._cameraPose);
    console.log("Camera Scale:", cScale);
    console.log("Input coordinates (NDC):", x, y);
    console.log("Grid size:", this._gridSize);
    if (cScale === 0 || !isFinite(cScale)) {
      return false;
    }
    const gridX = Math.floor(
      ((x / cScale + cX / cScale + 1) / 2) * this._gridSize
    );
    const gridY = Math.floor(
      ((y / cScale + cY / cScale + 1) / 2) * this._gridSize
    );
    console.log(`Grid coordinates: (${gridX}, ${gridY})`);
    if (
      gridX >= 0 &&
      gridX < this._gridSize &&
      gridY >= 0 &&
      gridY < this._gridSize
    ) {
      const index = gridY * this._gridSize + gridX;
      console.log(`Cell index: ${index}`);
      const currentValue = this._cellStatus[index];
      let newValue;
      if (currentValue === 0) newValue = 1;
      else if (currentValue === 1) newValue = 0;
      else if (currentValue === 2) newValue = 3;
      else newValue = 2;
      this._cellStatus[index] = newValue;
      const newData = new Uint32Array([newValue]);
      const currentBuffer = this._step % 2;
      this._device.queue.writeBuffer(
        this._cellStateBuffers[currentBuffer],
        index * 4,
        newData
      );
      const otherBuffer = (this._step + 1) % 2;
      this._device.queue.writeBuffer(
        this._cellStateBuffers[otherBuffer],
        index * 4,
        newData
      );
      return true;
    } else {
      return false;
    }
  }
  resetSimulation() {
    for (let i = 0; i < this._cellStatus.length; i++) {
      this._cellStatus[i] = Math.random() > this._ODDS ? 1 : 0;
    }
    const neverDeadCount = 1000;
    for (let i = 0; i < neverDeadCount; i++) {
      const x = Math.floor(Math.random() * this._gridSize);
      const y = Math.floor(Math.random() * this._gridSize);
      this._cellStatus[y * this._gridSize + x] = 2;
    }
    this._device.queue.writeBuffer(
      this._cellStateBuffers[0],
      0,
      this._cellStatus
    );
    this._step = 0;
  }
  updateCameraPose() {
    this._device.queue.writeBuffer(this._cameraPoseBuffer, 0, this._cameraPose);
  }
  async createShaders() {
    let shaderCode = await this.loadShader(
      "./optimized_camera2dalivedead.wgsl"
    );
    this._shaderModule = this._device.createShaderModule({
      label: " Shader " + this.getName(),
      code: shaderCode,
    });
    this._bindGroupLayout = this._device.createBindGroupLayout({
      label: "Grid Bind Group Layout " + this.getName(),
      entries: [
        { binding: 0, visibility: GPUShaderStage.VERTEX, buffer: {} },
        {
          binding: 1,
          visibility: GPUShaderStage.VERTEX | GPUShaderStage.COMPUTE,
          buffer: { type: "read-only-storage" },
        },
        {
          binding: 2,
          visibility: GPUShaderStage.COMPUTE,
          buffer: { type: "storage" },
        },
        {
          binding: 3,
          visibility: GPUShaderStage.VERTEX | GPUShaderStage.COMPUTE,
          buffer: { type: "uniform" },
        },
      ],
    });
    this._pipelineLayout = this._device.createPipelineLayout({
      label: "Grid Pipeline Layout",
      bindGroupLayouts: [this._bindGroupLayout],
    });
  }
  async createRenderPipeline() {
    this._renderPipeline = this._device.createRenderPipeline({
      label: "Render Pipeline " + this.getName(),
      layout: this._pipelineLayout,
      vertex: {
        module: this._shaderModule,
        entryPoint: "vertexMain",
        buffers: [this._vertexBufferLayout],
      },
      fragment: {
        module: this._shaderModule,
        entryPoint: "fragmentMain",
        targets: [{ format: this._canvasFormat }],
      },
      primitive: { topology: "triangle-strip" },
    });
    this._bindGroups = [
      this._device.createBindGroup({
        label: "Renderer Bind Group 1 " + this.getName(),
        layout: this._renderPipeline.getBindGroupLayout(0),
        entries: [
          { binding: 0, resource: { buffer: this._cameraPoseBuffer } },
          { binding: 1, resource: { buffer: this._cellStateBuffers[0] } },
          { binding: 2, resource: { buffer: this._cellStateBuffers[1] } },
          { binding: 3, resource: { buffer: this._gridSizeBuffer } },
        ],
      }),
      this._device.createBindGroup({
        label: "Renderer Bind Group 2 " + this.getName(),
        layout: this._renderPipeline.getBindGroupLayout(0),
        entries: [
          { binding: 0, resource: { buffer: this._cameraPoseBuffer } },
          { binding: 1, resource: { buffer: this._cellStateBuffers[1] } },
          { binding: 2, resource: { buffer: this._cellStateBuffers[0] } },
          { binding: 3, resource: { buffer: this._gridSizeBuffer } },
        ],
      }),
    ];
  }
  render(pass) {
    pass.setPipeline(this._renderPipeline);
    pass.setVertexBuffer(0, this._vertexBuffer);
    pass.setBindGroup(0, this._bindGroups[this._step % 2]);
    pass.draw(this._vertices.length / 2, this._gridSize * this._gridSize);
  }
  async createComputePipeline() {
    this._computePipeline = this._device.createComputePipeline({
      label: "Grid update pipeline " + this.getName(),
      layout: this._pipelineLayout,
      compute: { module: this._shaderModule, entryPoint: "computeMain" },
    });
  }
  compute(pass) {
    if (this._isPaused) return;
    this._frameCounter++;
    const framesPerStep = Math.ceil(1 / this._simulationSpeed);
    if (this._frameCounter >= framesPerStep) {
      this._frameCounter = 0;
      const workgroupSize = 16;
      pass.setPipeline(this._computePipeline);
      pass.setBindGroup(0, this._bindGroups[this._step % 2]);
      pass.dispatchWorkgroups(
        Math.ceil(this._gridSize / workgroupSize),
        Math.ceil(this._gridSize / workgroupSize)
      );
      ++this._step;
    }
  }
}
class StandardTextObject {
  constructor(inputText, spacing = 5, textFont = "18px Arial") {
    this._textFont = textFont;
    this._lineSpacing = spacing;
    this._textCanvas = document.createElement("canvas");
    this._textContext = this._textCanvas.getContext("2d");
    this.updateTextRegion(inputText);
    this.updateText(inputText);
    this._textCanvas.style.position = "absolute";
    this._textCanvas.style.top = "10px";
    this._textCanvas.style.left = "10px";
    this._textCanvas.style.border = "1px solid red";
    document.body.appendChild(this._textCanvas);
  }
  toggleVisibility(forceState = null) {
    if (forceState === null) {
      this._textCanvas.hidden = !this._textCanvas.hidden;
    } else {
      this._textCanvas.hidden = !forceState;
    }
  }
  isVisible() {
    return !this._textCanvas.hidden;
  }
  updateTextRegion(newText) {
    this._textContext.font = this._textFont;
    this._lines = newText.split("\n");
    this._width = Math.max(
      ...this._lines.map((line) => this._textContext.measureText(line).width)
    );
    const match = this._textFont.match(/(\d+)px/);
    if (match) {
      this._fontSize = parseInt(match[1], 10);
    } else {
      this._fontSize = 18;
      this._textFont = "18px Arial";
    }
    this._height = this._lines.length * (this._fontSize + this._lineSpacing);
    this._paddingx = 5;
    this._paddingtop = 3;
    this._canvasWidth = Math.ceil(this._width + this._paddingx * 2);
    this._canvasHeight = Math.ceil(this._height + this._paddingtop);
    this._textCanvas.width = this._canvasWidth;
    this._textCanvas.height = this._canvasHeight;
    this._textContext.font = this._textFont;
    this._textContext.textBaseline = "top";
  }
  updateText(newText) {
    this._lines = newText.split("\n");
    this._textContext.fillStyle = "rgba(1, 1, 1, 0.5)";
    this._textContext.clearRect(0, 0, this._canvasWidth, this._canvasHeight);
    this._textContext.fillRect(0, 0, this._canvasWidth, this._canvasHeight);
    this._textContext.fillStyle = "white";
    this._lines.forEach((line, idx) => {
      const x = this._paddingx;
      const y = this._paddingtop + idx * (this._fontSize + this._lineSpacing);
      this._textContext.fillText(line, x, y);
    });
  }
}
let gamepadMode = false;
async function init() {
  const canvasTag = document.createElement("canvas");
  canvasTag.id = "renderCanvas";
  document.body.appendChild(canvasTag);
  const renderer = new Renderer(canvasTag);
  await renderer.init();
  const camera = new Camera();
  const vertices = new Float32Array([-1, -1, 1, -1, 1, 1, -1, 1, -1, -1]);
  const grid = new CameraLineStrip2DAliveDeadObject(
    renderer._device,
    renderer._canvasFormat,
    camera._pose,
    vertices
  );
  await renderer.appendSceneObject(grid);
  const fpsText = new StandardTextObject("fps: ??");
  const instructionsText = new StandardTextObject(
    "Game of Life Controls:\n" +
      "w/↑: Move Up\n" +
      "a/←: Move Left\n" +
      "d/→: Move Right\n" +
      "s/↓: Move Down\n" +
      "q: Zoom In\n" +
      "e: Zoom Out\n" +
      "p: Pause/Resume Simulation\n" +
      "r: Reset Simulation\n" +
      "+/]: Speed Up Simulation\n" +
      "-/[: Slow Down Simulation\n" +
      "f: Toggle FPS Display\n" +
      "i: Toggle Instructions\n" +
      "g: Gamepad Mode"
  );
  const gamepadText = new StandardTextObject(
    "Game of Life Controls (PlayStation):\n" +
      "Left Analog Stick: Move Camera\n" +
      "Right Analog Stick: Zoom In/Out\n" +
      "X Button: Toggle Cell\n" +
      "Circle Button: Reset Simulation\n" +
      "Square Button: Pause/Resume\n" +
      "Triangle Button: Toggle FPS\n" +
      "D-Pad Up/Down: Speed Up/Slow Down\n" +
      "D-Pad Left/Right: Step Forward/Back\n" +
      "Options Button: Toggle Instructions\n" +
      "Share Button: Switch to Keyboard Mode"
  );
  const touchControlsText = new StandardTextObject(
    "Touch Controls:\n" +
      "Tap: Toggle Cell\n" +
      "Drag: Move Camera\n" +
      "Pinch: Zoom In/Out\n" +
      "Use buttons below for additional controls"
  );
  instructionsText._textCanvas.style.top = "50px";
  gamepadText._textCanvas.style.top = "50px";
  gamepadText.toggleVisibility();
  if (gamepadMode) {
    setupGamePadControls(camera, grid, fpsText, gamepadText, instructionsText);
  } else {
    setupKeyboardControls(
      camera,
      grid,
      fpsText,
      instructionsText,
      gamepadText,
      touchControlsText
    );
  }
  setupTouchScreenControl(
    camera,
    grid,
    fpsText,
    gamepadText,
    instructionsText,
    touchControlsText
  );
  let frameCnt = 0;
  let lastCalled;
  const targetFPS = 60;
  const secPerFrame = 1.0 / targetFPS;
  const frameInterval = secPerFrame * 1000;
  lastCalled = Date.now();
  requestAnimationFrame(function renderFrame() {
    let elapsed = Date.now() - lastCalled;
    if (elapsed > frameInterval) {
      ++frameCnt;
      lastCalled = Date.now() - (elapsed % frameInterval);
      renderer.render();
    }
    requestAnimationFrame(renderFrame);
  });
  setInterval(() => {
    fpsText.updateText(`fps: ${frameCnt}`);
    frameCnt = 0;
  }, 1000);
}
function toggleText(instructionsText, gamepadText, touchpadText, mode = 0) {
  console.log("toggleText, mode:", mode);
  instructionsText.toggleVisibility(false);
  gamepadText.toggleVisibility(false);
  if (touchpadText) {
    touchpadText.toggleVisibility(false);
  }
  if (mode === 0) {
    instructionsText.toggleVisibility(true);
  } else if (mode === 1) {
    gamepadText.toggleVisibility(true);
  } else if (mode === 2 && touchpadText) {
    touchpadText.toggleVisibility(true);
  }
}
function setupTouchScreenControl(
  camera,
  grid,
  fpsText,
  gamepadText,
  instructionsText,
  touchControlsText
) {
  touchControlsText._textCanvas.style.top = "50px";
  touchControlsText.toggleVisibility();
  const touchUI = document.createElement("div");
  touchUI.id = "touchUI";
  document.body.appendChild(touchUI);
  touchUI.style.position = "absolute";
  touchUI.style.bottom = "10px";
  touchUI.style.left = "0";
  touchUI.style.right = "0";
  touchUI.style.display = "flex";
  touchUI.style.justifyContent = "center";
  touchUI.style.gap = "10px";
  touchUI.style.padding = "10px";
  touchUI.style.zIndex = "100";
  const buttonConfig = [
    { id: "pauseBtn", text: "Pause", action: () => grid.pauseGrid() },
    { id: "resetBtn", text: "Reset", action: () => grid.resetSimulation() },
    { id: "speedUpBtn", text: "Speed+", action: () => grid.speedUp() },
    { id: "slowDownBtn", text: "Speed-", action: () => grid.slowDown() },
    { id: "zoomInBtn", text: "Zoom+", action: () => camera.zoomIn() },
    { id: "zoomOutBtn", text: "Zoom-", action: () => camera.zoomOut() },
    { id: "fpsBtn", text: "FPS", action: () => fpsText.toggleVisibility() },
    {
      id: "infoBtn",
      text: "Info",
      action: () => {
        toggleText(instructionsText, gamepadText, touchControlsText, 2);
      },
    },
  ];
  buttonConfig.forEach((button) => {
    const btn = document.createElement("button");
    btn.id = button.id;
    btn.textContent = button.text;
    btn.style.fontSize = "16px";
    btn.style.backgroundColor = "rgb(230, 10, 10)";
    btn.style.color = "white";
    btn.style.minWidth = "70px";
    btn.addEventListener("click", (e) => {
      e.preventDefault();
      button.action();
      grid.updateCameraPose();
    });
    touchUI.appendChild(btn);
  });
  let isMoving = false;
  let lastTouchX = 0;
  let lastTouchY = 0;
  let lastPinchDist = 0;
  const canvas = document.getElementById("renderCanvas");
  canvas.addEventListener("touchstart", (e) => {
    e.preventDefault();
    if (e.touches.length === 1) {
      isMoving = false;
      lastTouchX = e.touches[0].clientX;
      lastTouchY = e.touches[0].clientY;
    } else if (e.touches.length === 2) {
      const dx = e.touches[0].clientX - e.touches[1].clientX;
      const dy = e.touches[0].clientY - e.touches[1].clientY;
      lastPinchDist = Math.sqrt(dx * dx + dy * dy);
    }
  });
  canvas.addEventListener("touchmove", (e) => {
    e.preventDefault();
    if (e.touches.length === 1) {
      const deltaX = e.touches[0].clientX - lastTouchX;
      const deltaY = e.touches[0].clientY - lastTouchY;
      if (Math.abs(deltaX) > 5 || Math.abs(deltaY) > 5) {
        isMoving = true;
        camera.moveRight(-deltaX * 0.001);
        camera.moveDown(-deltaY * 0.001);
        grid.updateCameraPose();
      }
      lastTouchX = e.touches[0].clientX;
      lastTouchY = e.touches[0].clientY;
    } else if (e.touches.length === 2) {
      const dx = e.touches[0].clientX - e.touches[1].clientX;
      const dy = e.touches[0].clientY - e.touches[1].clientY;
      const pinchDist = Math.sqrt(dx * dx + dy * dy);
      const pinchDelta = pinchDist - lastPinchDist;
      if (pinchDelta > 2) {
        camera.zoomIn(pinchDelta * 0.001);
        grid.updateCameraPose();
      } else if (pinchDelta < -2) {
        camera.zoomOut(-pinchDelta * 0.001);
        grid.updateCameraPose();
      }
      lastPinchDist = pinchDist;
    }
  });
  canvas.addEventListener("touchend", (e) => {
    e.preventDefault();
    if (e.touches.length === 0 && !isMoving) {
      const rect = canvas.getBoundingClientRect();
      const x = ((lastTouchX - rect.left) / rect.width) * 2 - 1;
      const y = -(((lastTouchY - rect.top) / rect.height) * 2 - 1);
      if (grid.toggleCellAt) {
        grid.toggleCellAt(x, y);
      }
    }
    isMoving = false;
  });
}
function setupGamePadControls(
  camera,
  grid,
  fpsText,
  gamepadText,
  instructionsText
) {
  let gamepad = null;
  const gamepadInfo = document.createElement("div");
  document.body.appendChild(gamepadInfo);
  gamepadInfo.style.position = "absolute";
  gamepadInfo.style.bottom = "10px";
  gamepadInfo.style.left = "10px";
  gamepadInfo.textContent = "No gamepad connected.";
  window.addEventListener("gamepadconnected", (event) => {
    gamepad = event.gamepad;
    gamepadInfo.textContent = `Gamepad connected: ${gamepad.id}`;
    gameLoop();
  });
  window.addEventListener("gamepaddisconnected", () => {
    gamepad = null;
    gamepadInfo.textContent = "Gamepad disconnected";
  });
  const buttonStates = {};
  function gameLoop() {
    if (!gamepad) return;
    const gamepads = navigator.getGamepads();
    if (!gamepads) return;
    const gp = gamepads[gamepad.index];
    if (!gp) return;
    const leftStickDeadzone = 0.1;
    const moveSpeed = 0.2;
    if (Math.abs(gp.axes[0]) > leftStickDeadzone) {
      if (gp.axes[0] < 0) {
        camera.moveLeft(moveSpeed * Math.abs(gp.axes[0]));
      } else {
        camera.moveRight(moveSpeed * Math.abs(gp.axes[0]));
      }
    }
    if (Math.abs(gp.axes[1]) > leftStickDeadzone) {
      if (gp.axes[1] < 0) {
        camera.moveUp(moveSpeed * Math.abs(gp.axes[1]));
      } else {
        camera.moveDown(moveSpeed * Math.abs(gp.axes[1]));
      }
    }
  }
  const rightStickDeadzone = 0.1;
  if (Math.abs(gp.axes[3]) > rightStickDeadzone) {
    if (gp.axes[3] < 0) {
      camera.zoomIn(0.01 * Math.abs(gp.axes[3]));
    } else {
      camera.zoomOut(0.01 * Math.abs(gp.axes[3]));
    }
  }
  if (gp.buttons[0].pressed && !buttonStates[0]) {
    const canvas = document.getElementById("renderCanvas");
    const rect = canvas.getBoundingClientRect();
    const centerX = rect.width / 2;
    const centerY = rect.height / 2;
    const x = ((centerX - rect.left) / rect.width) * 2 - 1;
    const y = -(((centerY - rect.top) / rect.height) * 2 - 1);
    if (grid.toggleCellAt) {
      grid.toggleCellAt(x, y);
    }
    buttonStates[0] = true;
  } else if (!gp.buttons[0].pressed) {
    buttonStates[0] = false;
  }
  if (gp.buttons[1].pressed && !buttonStates[1]) {
    grid.resetSimulation();
    buttonStates[1] = true;
  } else if (!gp.buttons[1].pressed) {
    buttonStates[1] = false;
  }
  if (gp.buttons[2].pressed && !buttonStates[2]) {
    grid.pauseGrid();
    buttonStates[2] = true;
  } else if (!gp.buttons[2].pressed) {
    buttonStates[2] = false;
  }
  if (gp.buttons[3].pressed && !buttonStates[3]) {
    fpsText.toggleVisibility();
    buttonStates[3] = true;
  } else if (!gp.buttons[3].pressed) {
    buttonStates[3] = false;
  }
  if (gp.buttons[12].pressed && !buttonStates[12]) {
    grid.speedUp();
    buttonStates[12] = true;
  } else if (!gp.buttons[12].pressed) {
    buttonStates[12] = false;
  }
  if (gp.buttons[13].pressed && !buttonStates[13]) {
    grid.slowDown();
    buttonStates[13] = true;
  } else if (!gp.buttons[13].pressed) {
    buttonStates[13] = false;
  }
  if (gp.buttons[9].pressed && !buttonStates[9]) {
    gamepadText.toggleVisibility();
    buttonStates[9] = true;
  } else if (!gp.buttons[9].pressed) {
    buttonStates[9] = false;
  }
  if (gp.buttons[8].pressed && !buttonStates[8]) {
    gamepadMode = false;
    gamepadText.toggleVisibility();
    instructionsText.toggleVisibility();
    buttonStates[8] = true;
  } else if (!gp.buttons[8].pressed) {
    buttonStates[8] = false;
  }
  grid.updateCameraPose();
  requestAnimationFrame(gameLoop);
}
function setupKeyboardControls(
  camera,
  grid,
  fpsText,
  instructionsText,
  gamepadText,
  touchControlsText
) {
  const moveSpeed = 0.05;
  window.addEventListener("keydown", (e) => {
    switch (e.key) {
      case "ArrowUp":
      case "w":
        camera.moveUp(moveSpeed);
        break;
      case "ArrowDown":
      case "s":
        camera.moveDown(moveSpeed);
        break;
      case "ArrowLeft":
      case "a":
        camera.moveLeft(moveSpeed);
        break;
      case "ArrowRight":
      case "d":
        camera.moveRight(moveSpeed);
        break;
      case "q":
        camera.zoomIn();
        break;
      case "e":
        camera.zoomOut();
        break;
      case "f":
        fpsText.toggleVisibility();
        break;
      case "i":
        instructionsText.toggleVisibility();
        break;
      case "p":
        grid.pauseGrid();
        break;
      case "r":
        grid.resetSimulation();
        break;
      case "]":
      case "+":
        grid.speedUp();
        grid.updateCameraPose();
        break;
      case "[":
      case "-":
        grid.slowDown();
        grid.updateCameraPose();
        break;
      case "g":
      case "G":
        gamepadMode = !gamepadMode;
        if (gamepadMode) {
          toggleText(instructionsText, gamepadText, touchControlsText, 1);
        } else {
          toggleText(instructionsText, gamepadText, touchControlsText, 0);
        }
        break;
    }
    grid.updateCameraPose();
  });
  const canvas = document.getElementById("renderCanvas");
  canvas.addEventListener("click", (event) => {
    const rect = canvas.getBoundingClientRect();
    const x = ((event.clientX - rect.left) / rect.width) * 2 - 1;
    const y = -(((event.clientY - rect.top) / rect.height) * 2 - 1);
    console.log(
      `Click at screen coordinates: (${event.clientX}, ${event.clientY})`
    );
    console.log(`Converted to NDC: (${x}, ${y})`);
    grid.updateCameraPose();
    if (grid.toggleCellAt) {
      grid.toggleCellAt(x, y);
    }
  });
}
init()
  .then((ret) => console.log(ret))
  .catch((error) => {
    const pTag = document.createElement("p");
    pTag.innerHTML = `${navigator.userAgent}<br/>${error.message}`;
    document.body.appendChild(pTag);
    document.getElementById("renderCanvas").remove();
  });
