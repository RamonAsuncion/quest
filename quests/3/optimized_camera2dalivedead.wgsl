/* 
 * Copyright (c) 2025 SingChun LEE @ Bucknell University. CC BY-NC 4.0.
 * 
 * This code is provided mainly for educational purposes at Bucknell University.
 *
 * This code is licensed under the Creative Commons Attribution-NonCommerical 4.0
 * International License. To view a copy of the license, visit 
 *   https://creativecommons.org/licenses/by-nc/4.0/
 * or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
 *
 * You are free to:
 *  - Share: copy and redistribute the material in any medium or format.
 *  - Adapt: remix, transform, and build upon the material.
 *
 * Under the following terms:
 *  - Attribution: You must give appropriate credit, provide a link to the license,
 *                 and indicate if changes where made.
 *  - NonCommerical: You may not use the material for commerical purposes.
 *  - No additional restrictions: You may not apply legal terms or technological 
 *                                measures that legally restrict others from doing
 *                                anything the license permits.
 */

struct tint_symbol {
  /* @offset(0) */
  tint_symbol_1 : f32,
  /* @offset(4) */
  tint_symbol_2 : f32,
  /* @offset(8) */
  tint_symbol_3 : f32,
  /* @offset(12) */
  tint_symbol_4 : f32,
}

struct tint_symbol_5 {
  /* @offset(0) */
  tint_symbol_6 : tint_symbol,
  /* @offset(16) */
  tint_symbol_7 : vec2f,
}

struct tint_symbol_17_block {
  /* @offset(0) */
  inner : tint_symbol_5,
}

alias RTArr = array<u32>;

struct tint_symbol_18_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_20_block {
  /* @offset(0) */
  inner : u32,
}

struct tint_symbol_21 {
  /* @offset(0) */
  tint_symbol_22 : vec4f,
  /* @offset(16) */
  tint_symbol_23 : f32,
}

var<private> tint_symbol_22_1 : vec2f;

var<private> tint_symbol_25_1 : u32;

var<private> tint_symbol_22_2 = vec4f();

var<private> tint_symbol_23_1 = 0.0f;

var<private> tint_symbol_23_2 : f32;

var<private> value = vec4f();

var<private> tint_symbol_38_1 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_17 : tint_symbol_17_block;

@group(0) @binding(1) var<storage> tint_symbol_18 : tint_symbol_18_block;

@group(0) @binding(2) var<storage, read_write> tint_symbol_19 : tint_symbol_18_block;

@group(0) @binding(3) var<uniform> tint_symbol_20 : tint_symbol_20_block;

fn tint_symbol_8(tint_symbol_9 : tint_symbol, tint_symbol_10 : tint_symbol) -> tint_symbol {
  return tint_symbol(((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_1) - (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_2)), ((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_2) + (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_1)), ((((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_3) + (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_4)) + (tint_symbol_9.tint_symbol_3 * tint_symbol_10.tint_symbol_1)) - (tint_symbol_9.tint_symbol_4 * tint_symbol_10.tint_symbol_2)), ((((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_4) - (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_3)) + (tint_symbol_9.tint_symbol_3 * tint_symbol_10.tint_symbol_2)) + (tint_symbol_9.tint_symbol_4 * tint_symbol_10.tint_symbol_1)));
}

fn tint_symbol_11(tint_symbol_9_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_9_1.tint_symbol_1, -(tint_symbol_9_1.tint_symbol_2), -(tint_symbol_9_1.tint_symbol_3), -(tint_symbol_9_1.tint_symbol_4));
}

fn tint_symbol_12(tint_symbol_13 : tint_symbol, tint_symbol_14 : tint_symbol) -> tint_symbol {
  let x_101 = tint_symbol_11(tint_symbol_14);
  let x_102 = tint_symbol_8(tint_symbol_13, x_101);
  let x_103 = tint_symbol_8(tint_symbol_14, x_102);
  return x_103;
}

fn tint_symbol_15(tint_symbol_13_1 : vec2f, tint_symbol_14_1 : tint_symbol) -> vec2f {
  let x_109 = tint_symbol_12(tint_symbol(0.0f, 1.0f, tint_symbol_13_1.x, tint_symbol_13_1.y), tint_symbol_14_1);
  return vec2f((x_109.tint_symbol_3 / x_109.tint_symbol_2), (x_109.tint_symbol_4 / x_109.tint_symbol_2));
}

fn tint_mod(lhs : u32, rhs : u32) -> u32 {
  return (lhs % select(rhs, 1u, (rhs == 0u)));
}

fn tint_div(lhs_1 : u32, rhs_1 : u32) -> u32 {
  return (lhs_1 / select(rhs_1, 1u, (rhs_1 == 0u)));
}

fn tint_symbol_24_inner(tint_symbol_22 : vec2f, tint_symbol_25 : u32) -> tint_symbol_21 {
  var x_159 = vec2f();
  var x_166 = vec2f();
  var tint_symbol_35 = tint_symbol_21(vec4f(), 0.0f);
  let x_151 = tint_symbol_20.inner;
  let x_152 = tint_mod(tint_symbol_25, x_151);
  let x_153 = tint_div(tint_symbol_25, x_151);
  let x_157 = f32(x_151);
  let x_175 = tint_symbol_17.inner.tint_symbol_6;
  let x_172 = tint_symbol_11(x_175);
  let x_176 = tint_symbol_15(((tint_symbol_22 * (2.0f / f32(x_151))) + (((vec2f(f32(x_152), f32(x_153)) / vec2f(x_157)) * 2.0f) - vec2f(1.0f))), x_172);
  let x_180 = (x_176 * tint_symbol_17.inner.tint_symbol_7);
  tint_symbol_35.tint_symbol_22 = vec4f(x_180.x, x_180.y, 0.0f, 1.0f);
  tint_symbol_35.tint_symbol_23 = f32(tint_symbol_18.inner[tint_symbol_25]);
  let x_195 = tint_symbol_35;
  return x_195;
}

fn tint_symbol_24_1() {
  let x_201 = tint_symbol_22_1;
  let x_202 = tint_symbol_25_1;
  let x_200 = tint_symbol_24_inner(x_201, x_202);
  tint_symbol_22_2 = x_200.tint_symbol_22;
  tint_symbol_23_1 = x_200.tint_symbol_23;
  return;
}

struct tint_symbol_24_out {
  @builtin(position)
  tint_symbol_22_2_1 : vec4f,
  @location(0)
  tint_symbol_23_1_1 : f32,
}

@vertex
fn vertexMain(@location(0) tint_symbol_22_1_param : vec2f, @builtin(instance_index) tint_symbol_25_1_param : u32) -> tint_symbol_24_out {
  tint_symbol_22_1 = tint_symbol_22_1_param;
  tint_symbol_25_1 = tint_symbol_25_1_param;
  tint_symbol_24_1();
  return tint_symbol_24_out(tint_symbol_22_2, tint_symbol_23_1);
}

fn tint_symbol_36_inner(tint_symbol_23 : f32) -> vec4f {
  if ((tint_symbol_23 < 0.5f)) {
    return vec4f(0.0f, 0.0f, 0.0f, 1.0f);
  } else {
    if ((tint_symbol_23 < 1.5f)) {
      return vec4f(1.0f);
    } else {
      return vec4f(0.0f, 0.5f, 1.0f, 1.0f);
    }
  }
}

fn tint_symbol_36_1() {
  let x_225 = tint_symbol_23_2;
  let x_224 = tint_symbol_36_inner(x_225);
  value = x_224;
  return;
}

struct tint_symbol_36_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_23_2_param : f32) -> tint_symbol_36_out {
  tint_symbol_23_2 = tint_symbol_23_2_param;
  tint_symbol_36_1();
  return tint_symbol_36_out(value);
}

fn tint_symbol_37_inner(tint_symbol_38 : vec3u) {
  var x_239 : bool;
  var x_240 : bool;
  let x_233 = (tint_symbol_38.x >= tint_symbol_20.inner);
  x_240 = x_233;
  if (x_233) {
  } else {
    x_239 = (tint_symbol_38.y >= tint_symbol_20.inner);
    x_240 = x_239;
  }
  if (x_240) {
    return;
  }
  var x_248 : u32;
  var x_306 : u32;
  var x_308 : u32;
  var x_323 : bool;
  var x_324 : bool;
  let x_243 = tint_symbol_38.x;
  let x_244 = tint_symbol_38.y;
  let x_246 = tint_symbol_20.inner;
  x_248 = ((x_244 * x_246) + x_243);
  let x_249 = tint_mod(((x_243 + x_246) - 1u), x_246);
  let x_252 = tint_mod((x_243 + 1u), x_246);
  let x_254 = tint_mod(((x_244 + x_246) - 1u), x_246);
  let x_257 = tint_mod((x_244 + 1u), x_246);
  x_306 = (((((((min(tint_symbol_18.inner[((x_254 * x_246) + x_249)], 1u) + min(tint_symbol_18.inner[((x_254 * x_246) + x_243)], 1u)) + min(tint_symbol_18.inner[((x_254 * x_246) + x_252)], 1u)) + min(tint_symbol_18.inner[((x_244 * x_246) + x_249)], 1u)) + min(tint_symbol_18.inner[((x_244 * x_246) + x_252)], 1u)) + min(tint_symbol_18.inner[((x_257 * x_246) + x_249)], 1u)) + min(tint_symbol_18.inner[((x_257 * x_246) + x_243)], 1u)) + min(tint_symbol_18.inner[((x_257 * x_246) + x_252)], 1u));
  x_308 = tint_symbol_18.inner[x_248];
  if ((x_308 >= 2u)) {
    tint_symbol_19.inner[x_248] = x_308;
  } else {
    var x_322 : bool;
    let x_315 = (x_308 == 1u);
    x_324 = x_315;
    if (x_315) {
      let x_318 = (x_306 < 2u);
      x_323 = x_318;
      if (x_318) {
      } else {
        x_322 = (x_306 > 3u);
        x_323 = x_322;
      }
      x_324 = x_323;
    }
    var x_332 : bool;
    var x_333 : bool;
    if (x_324) {
      tint_symbol_19.inner[x_248] = 0u;
    } else {
      let x_329 = !(x_315);
      x_333 = x_329;
      if (x_329) {
        x_332 = (x_306 == 3u);
        x_333 = x_332;
      }
      if (x_333) {
        tint_symbol_19.inner[x_248] = 1u;
      } else {
        tint_symbol_19.inner[x_248] = x_308;
      }
    }
  }
  return;
}

fn tint_symbol_37_1() {
  let x_342 = tint_symbol_38_1;
  tint_symbol_37_inner(x_342);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_38_1_param : vec3u) {
  tint_symbol_38_1 = tint_symbol_38_1_param;
  tint_symbol_37_1();
}
