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
  /* @offset(16) */
  tint_symbol_5 : f32,
  /* @offset(20) */
  tint_symbol_6 : f32,
  /* @offset(24) */
  tint_symbol_7 : f32,
  /* @offset(28) */
  tint_symbol_8 : f32,
  /* @offset(32) */
  tint_symbol_9 : f32,
  /* @offset(36) */
  tint_symbol_10 : f32,
  /* @offset(40) */
  tint_symbol_11 : f32,
  /* @offset(44) */
  tint_symbol_12 : f32,
  /* @offset(48) */
  tint_symbol_13 : f32,
  /* @offset(52) */
  tint_symbol_14 : f32,
  /* @offset(56) */
  tint_symbol_15 : f32,
  /* @offset(60) */
  tint_symbol_16 : f32,
}

struct tint_symbol_103 {
  /* @offset(0) */
  tint_symbol_104 : tint_symbol,
  /* @offset(64) */
  tint_symbol_105 : vec2f,
  /* @offset(72) */
  tint_symbol_106 : vec2f,
}

struct tint_symbol_111_block {
  /* @offset(0) */
  inner : tint_symbol_103,
}

struct tint_symbol_107 {
  /* @offset(0) */
  tint_symbol_68 : vec4f,
  /* @offset(16) */
  tint_symbol_67 : vec4f,
  /* @offset(32) */
  tint_symbol_82 : f32,
  /* @offset(36) */
  tint_symbol_108 : f32,
  /* @offset(40) */
  tint_symbol_109 : f32,
  /* @offset(44) */
  tint_symbol_110 : f32,
}

struct tint_symbol_66_block {
  /* @offset(0) */
  inner : tint_symbol_107,
}

alias RTArr = array<f32>;

struct tint_symbol_77_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_112_block {
  /* @offset(0) */
  inner : u32,
}

alias Arr = array<vec4f, 5u>;

alias Arr_1 = array<f32, 5u>;

struct tint_symbol_92 {
  /* @offset(0) */
  tint_symbol_23 : vec3f,
  /* @offset(12) */
  tint_symbol_93 : bool,
  /* @offset(16) */
  tint_symbol_94 : bool,
}

var<private> tint_symbol_157_1 : vec3u;

var<private> tint_symbol_157_2 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_111 : tint_symbol_111_block;

@group(0) @binding(1) var<uniform> tint_symbol_66 : tint_symbol_66_block;

@group(0) @binding(2) var<storage> tint_symbol_77 : tint_symbol_77_block;

@group(0) @binding(3) var tint_symbol_89 : texture_storage_2d<rgba8unorm, write>;

@group(0) @binding(4) var<uniform> tint_symbol_112 : tint_symbol_112_block;

fn tint_ftou(v : vec3f) -> vec3u {
  return select(vec3u(4294967295u), select(vec3u(v), vec3u(), (v < vec3f())), (v < vec3f(4294967040.0f)));
}

fn tint_ftou_1(v_1 : f32) -> u32 {
  return select(4294967295u, select(u32(v_1), 0u, (v_1 < 0.0f)), (v_1 < 4294967040.0f));
}

fn tint_symbol_17(tint_symbol_18 : tint_symbol, tint_symbol_19 : tint_symbol) -> tint_symbol {
  var tint_symbol_20 = tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  tint_symbol_20.tint_symbol_1 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_1) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_14));
  tint_symbol_20.tint_symbol_2 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_2) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_8));
  tint_symbol_20.tint_symbol_3 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_3) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_12));
  tint_symbol_20.tint_symbol_4 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_4) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_13));
  tint_symbol_20.tint_symbol_5 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_5) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_7)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_4));
  tint_symbol_20.tint_symbol_6 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_6) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_3));
  tint_symbol_20.tint_symbol_7 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_7) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_11)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_2));
  tint_symbol_20.tint_symbol_8 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_8) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_2));
  tint_symbol_20.tint_symbol_9 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_9) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_15)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_14));
  tint_symbol_20.tint_symbol_10 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_10) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_15)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_13));
  tint_symbol_20.tint_symbol_11 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_11) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_12));
  tint_symbol_20.tint_symbol_12 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_12) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_3));
  tint_symbol_20.tint_symbol_13 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_13) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_4));
  tint_symbol_20.tint_symbol_14 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_14) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_1));
  tint_symbol_20.tint_symbol_15 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_15) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_6)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_8));
  tint_symbol_20.tint_symbol_16 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_16) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_7)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_1));
  let x_850 = tint_symbol_20;
  return x_850;
}

fn tint_symbol_21(tint_symbol_18_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_18_1.tint_symbol_1, -(tint_symbol_18_1.tint_symbol_2), -(tint_symbol_18_1.tint_symbol_3), -(tint_symbol_18_1.tint_symbol_4), -(tint_symbol_18_1.tint_symbol_5), -(tint_symbol_18_1.tint_symbol_6), -(tint_symbol_18_1.tint_symbol_7), -(tint_symbol_18_1.tint_symbol_8), -(tint_symbol_18_1.tint_symbol_9), -(tint_symbol_18_1.tint_symbol_10), -(tint_symbol_18_1.tint_symbol_11), tint_symbol_18_1.tint_symbol_12, tint_symbol_18_1.tint_symbol_13, tint_symbol_18_1.tint_symbol_14, tint_symbol_18_1.tint_symbol_15, tint_symbol_18_1.tint_symbol_16);
}

fn tint_symbol_22(tint_symbol_23 : tint_symbol, tint_symbol_24 : tint_symbol) -> tint_symbol {
  let x_886 = tint_symbol_21(tint_symbol_24);
  let x_887 = tint_symbol_17(tint_symbol_23, x_886);
  let x_888 = tint_symbol_17(tint_symbol_24, x_887);
  return x_888;
}

fn tint_symbol_25(tint_symbol_24_1 : tint_symbol) -> f32 {
  var tint_symbol_26 = 0.0f;
  tint_symbol_26 = 0.0f;
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_1 * tint_symbol_24_1.tint_symbol_1));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_2 * tint_symbol_24_1.tint_symbol_2));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_3 * tint_symbol_24_1.tint_symbol_3));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_4 * tint_symbol_24_1.tint_symbol_4));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_5 * tint_symbol_24_1.tint_symbol_5));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_6 * tint_symbol_24_1.tint_symbol_6));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_7 * tint_symbol_24_1.tint_symbol_7));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_8 * tint_symbol_24_1.tint_symbol_8));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_9 * tint_symbol_24_1.tint_symbol_9));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_10 * tint_symbol_24_1.tint_symbol_10));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_11 * tint_symbol_24_1.tint_symbol_11));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_12 * tint_symbol_24_1.tint_symbol_12));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_13 * tint_symbol_24_1.tint_symbol_13));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_14 * tint_symbol_24_1.tint_symbol_14));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_15 * tint_symbol_24_1.tint_symbol_15));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_16 * tint_symbol_24_1.tint_symbol_16));
  let x_976 = tint_symbol_26;
  return sqrt(x_976);
}

fn tint_symbol_27(tint_symbol_28 : vec3f) -> tint_symbol {
  return tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, (-(tint_symbol_28.x) / 2.0f), (-(tint_symbol_28.y) / 2.0f), (-(tint_symbol_28.z) / 2.0f), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_29(tint_symbol_24_2 : tint_symbol) -> tint_symbol {
  return tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, tint_symbol_24_2.tint_symbol_5, tint_symbol_24_2.tint_symbol_6, tint_symbol_24_2.tint_symbol_7, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_30(tint_symbol_28_1 : vec3f) -> tint_symbol {
  return tint_symbol(0.0f, tint_symbol_28_1.z, -(tint_symbol_28_1.y), tint_symbol_28_1.x, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_34(tint_symbol_24_3 : tint_symbol) -> tint_symbol {
  var tint_return_flag_1 = false;
  var tint_return_value_1 = tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  let x_1015 = tint_symbol_25(tint_symbol_24_3);
  if ((x_1015 == 0.0f)) {
    tint_return_flag_1 = true;
    tint_return_value_1 = tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  }
  if (!(tint_return_flag_1)) {
    tint_return_flag_1 = true;
    tint_return_value_1 = tint_symbol((tint_symbol_24_3.tint_symbol_1 / x_1015), (tint_symbol_24_3.tint_symbol_2 / x_1015), (tint_symbol_24_3.tint_symbol_3 / x_1015), (tint_symbol_24_3.tint_symbol_4 / x_1015), (tint_symbol_24_3.tint_symbol_5 / x_1015), (tint_symbol_24_3.tint_symbol_6 / x_1015), (tint_symbol_24_3.tint_symbol_7 / x_1015), (tint_symbol_24_3.tint_symbol_8 / x_1015), (tint_symbol_24_3.tint_symbol_9 / x_1015), (tint_symbol_24_3.tint_symbol_10 / x_1015), (tint_symbol_24_3.tint_symbol_11 / x_1015), (tint_symbol_24_3.tint_symbol_12 / x_1015), (tint_symbol_24_3.tint_symbol_13 / x_1015), (tint_symbol_24_3.tint_symbol_14 / x_1015), (tint_symbol_24_3.tint_symbol_15 / x_1015), (tint_symbol_24_3.tint_symbol_16 / x_1015));
  }
  let x_1058 = tint_return_value_1;
  return x_1058;
}

fn tint_symbol_31(tint_symbol_1 : vec3f, tint_symbol_28_2 : vec3f) -> tint_symbol {
  let x_1064 = tint_symbol_30(tint_symbol_28_2);
  let x_1065 = tint_symbol_34(x_1064);
  return tint_symbol(0.0f, x_1065.tint_symbol_2, x_1065.tint_symbol_3, x_1065.tint_symbol_4, -(((-(x_1065.tint_symbol_3) * tint_symbol_1.z) - (x_1065.tint_symbol_2 * tint_symbol_1.y))), -(((x_1065.tint_symbol_2 * tint_symbol_1.x) - (x_1065.tint_symbol_4 * tint_symbol_1.z))), -(((x_1065.tint_symbol_4 * tint_symbol_1.y) + (x_1065.tint_symbol_3 * tint_symbol_1.x))), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_35(tint_symbol_36 : f32, tint_symbol_28_3 : vec3f, tint_symbol_37 : vec3f) -> tint_symbol {
  let x_1103 = sin((tint_symbol_36 / 2.0f));
  let x_1105 = tint_symbol_31(tint_symbol_37, tint_symbol_28_3);
  return tint_symbol(cos((tint_symbol_36 / 2.0f)), (x_1103 * x_1105.tint_symbol_2), (x_1103 * x_1105.tint_symbol_3), (x_1103 * x_1105.tint_symbol_4), (x_1103 * x_1105.tint_symbol_5), (x_1103 * x_1105.tint_symbol_6), (x_1103 * x_1105.tint_symbol_7), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_40(tint_symbol_24_4 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_24_4.tint_symbol_1, tint_symbol_24_4.tint_symbol_2, tint_symbol_24_4.tint_symbol_3, tint_symbol_24_4.tint_symbol_4, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_41(tint_symbol_23_1 : vec3f) -> tint_symbol {
  return tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, -(tint_symbol_23_1.z), tint_symbol_23_1.y, -(tint_symbol_23_1.x), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_42(tint_symbol_23_2 : tint_symbol) -> vec3f {
  return vec3f((-(tint_symbol_23_2.tint_symbol_11) / tint_symbol_23_2.tint_symbol_8), (tint_symbol_23_2.tint_symbol_10 / tint_symbol_23_2.tint_symbol_8), (-(tint_symbol_23_2.tint_symbol_9) / tint_symbol_23_2.tint_symbol_8));
}

fn tint_symbol_43(tint_symbol_32 : vec3f, tint_symbol_28_4 : f32) -> tint_symbol {
  return tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, tint_symbol_32.x, tint_symbol_32.y, tint_symbol_32.z, -(tint_symbol_28_4), 0.0f);
}

fn tint_symbol_44(tint_symbol_45 : vec3f, tint_symbol_46 : vec3f, tint_symbol_47 : vec3f) -> tint_symbol {
  let x_1270 = tint_symbol_43(vec3f(((((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z)) - ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z))) + ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z))), -(((((tint_symbol_46.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_46.z)) - ((tint_symbol_45.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_45.z))) + ((tint_symbol_45.x * tint_symbol_46.z) - (tint_symbol_46.x * tint_symbol_45.z)))), ((((tint_symbol_46.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_46.y)) - ((tint_symbol_45.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_45.y))) + ((tint_symbol_45.x * tint_symbol_46.y) - (tint_symbol_46.x * tint_symbol_45.y)))), (((tint_symbol_45.x * ((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z))) - (tint_symbol_46.x * ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z)))) + (tint_symbol_47.x * ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z)))));
  return x_1270;
}

const x_1292 = Arr(vec4f(0.0f, 0.0f, 0.0f, 0.20000000298023223877f), vec4f(0.20000000298023223877f, 0.0f, 0.0f, 0.5f), vec4f(0.40000000596046447754f, 0.0f, 0.69999998807907104492f, 0.69999998807907104492f), vec4f(0.69999998807907104492f, 0.89999997615814208984f, 0.5f, 0.0f), vec4f(1.0f, 1.0f, 0.0f, 0.0f));

const x_1296 = Arr_1(0.0f, 0.10000000149011611938f, 0.30000001192092895508f, 0.69999998807907104492f, 0.89999997615814208984f);

fn tint_symbol_51(tint_symbol_52 : f32) -> vec4f {
  var tint_return_flag = false;
  var tint_return_value = vec4f();
  var tint_symbol_55 = 0i;
  var var_for_index = array<vec4f, 5u>();
  var var_for_index_1 = array<vec4f, 5u>();
  var var_for_index_2 = array<vec4f, 5u>();
  var var_for_index_3 = array<vec4f, 5u>();
  var var_for_index_4 = array<vec4f, 5u>();
  var var_for_index_5 = array<vec4f, 5u>();
  var var_for_index_6 = array<vec4f, 5u>();
  var var_for_index_7 = array<vec4f, 5u>();
  var var_for_index_8 = array<vec4f, 5u>();
  var var_for_index_9 = array<vec4f, 5u>();
  var var_for_index_10 = array<f32, 5u>();
  var var_for_index_11 = array<f32, 5u>();
  tint_symbol_55 = 0i;
  loop {
    var x_1315 : bool;
    var x_1316 : bool;
    var_for_index = x_1292;
    let x_1309 = (tint_symbol_55 < 4i);
    x_1316 = x_1309;
    if (x_1309) {
      x_1315 = (tint_symbol_52 > var_for_index[tint_symbol_55].x);
      x_1316 = x_1315;
    }
    if (!(x_1316)) {
      break;
    }
    tint_symbol_55 = (tint_symbol_55 + 1i);
  }
  if ((tint_symbol_55 >= 4i)) {
    tint_return_flag = true;
    tint_return_value = vec4f(x_1292[4u].y, x_1292[4u].z, x_1292[4u].w, x_1296[4u]);
  }
  if (!(tint_return_flag)) {
    var_for_index_1 = x_1292;
    var_for_index_2 = x_1292;
    var_for_index_3 = x_1292;
    let x_1352 = ((tint_symbol_52 - var_for_index_1[tint_symbol_55].x) / (var_for_index_2[(tint_symbol_55 + 1i)].x - var_for_index_3[tint_symbol_55].x));
    var_for_index_4 = x_1292;
    var_for_index_5 = x_1292;
    let x_1358 = var_for_index_4[tint_symbol_55].y;
    let x_1362 = var_for_index_5[(tint_symbol_55 + 1i)].y;
    var_for_index_6 = x_1292;
    var_for_index_7 = x_1292;
    let x_1368 = var_for_index_6[tint_symbol_55].z;
    let x_1372 = var_for_index_7[(tint_symbol_55 + 1i)].z;
    var_for_index_8 = x_1292;
    var_for_index_9 = x_1292;
    let x_1378 = var_for_index_8[tint_symbol_55].w;
    let x_1382 = var_for_index_9[(tint_symbol_55 + 1i)].w;
    var_for_index_10 = x_1296;
    var_for_index_11 = x_1296;
    let x_1390 = var_for_index_10[tint_symbol_55];
    let x_1394 = var_for_index_11[(tint_symbol_55 + 1i)];
    tint_return_flag = true;
    tint_return_value = vec4f(mix(x_1358, x_1362, x_1352), mix(x_1368, x_1372, x_1352), mix(x_1378, x_1382, x_1352), mix(x_1390, x_1394, x_1352));
  }
  let x_1396 = tint_return_value;
  return x_1396;
}

fn tint_symbol_118(tint_symbol_119 : vec2f, tint_symbol_120 : f32) -> vec2f {
  var tint_symbol_121 = vec2f();
  tint_symbol_121 = tint_symbol_119;
  if ((tint_symbol_119.x < 0.0f)) {
    tint_symbol_121.x = tint_symbol_120;
  } else {
    if ((tint_symbol_120 < tint_symbol_119.x)) {
      tint_symbol_121.y = tint_symbol_119.x;
      tint_symbol_121.x = tint_symbol_120;
    } else {
      if ((tint_symbol_119.y < 0.0f)) {
        tint_symbol_121.y = tint_symbol_120;
      } else {
        if ((tint_symbol_120 < tint_symbol_119.y)) {
          tint_symbol_121.y = tint_symbol_120;
        }
      }
    }
  }
  let x_1430 = tint_symbol_121;
  return x_1430;
}

fn tint_symbol_122(tint_symbol_123 : f32, tint_symbol_70 : vec2f, tint_symbol_124 : f32, tint_symbol_125 : f32, tint_symbol_23_3 : vec2f, tint_symbol_28_5 : vec2f, tint_symbol_126 : vec2f) -> vec2f {
  var tint_symbol_127 = vec2f();
  tint_symbol_127 = tint_symbol_126;
  if ((abs(tint_symbol_125) > 0.00000000999999993923f)) {
    var x_1448 : f32;
    var x_1462 : bool;
    var x_1463 : bool;
    var x_1469 : bool;
    var x_1470 : bool;
    var x_1475 : bool;
    var x_1476 : bool;
    x_1448 = ((tint_symbol_123 - tint_symbol_124) / tint_symbol_125);
    if ((x_1448 > 0.0f)) {
      let x_1453 = (tint_symbol_23_3 + (tint_symbol_28_5 * x_1448));
      let x_1457 = (-(tint_symbol_70.x) < x_1453.x);
      x_1463 = x_1457;
      if (x_1457) {
        x_1462 = (x_1453.x < tint_symbol_70.x);
        x_1463 = x_1462;
      }
      x_1470 = x_1463;
      if (x_1463) {
        x_1469 = (-(tint_symbol_70.y) < x_1453.y);
        x_1470 = x_1469;
      }
      x_1476 = x_1470;
      if (x_1470) {
        x_1475 = (x_1453.y < tint_symbol_70.y);
        x_1476 = x_1475;
      }
      if (x_1476) {
        let x_1480 = tint_symbol_127;
        let x_1479 = tint_symbol_118(x_1480, x_1448);
        tint_symbol_127 = x_1479;
      }
    }
  }
  let x_1481 = tint_symbol_127;
  return x_1481;
}

fn tint_symbol_61(tint_symbol_23_4 : vec3f, tint_symbol_28_6 : vec3f) -> vec2f {
  var tint_symbol_129 = vec2f();
  var x_1507 = vec4f();
  tint_symbol_129 = vec2f(-1.0f);
  let x_1506 = (((tint_symbol_66.inner.tint_symbol_68 * tint_symbol_66.inner.tint_symbol_67) * 0.5f) / vec4f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
  let x_1516 = tint_symbol_129;
  let x_1509 = tint_symbol_122(x_1506.z, x_1506.xy, tint_symbol_23_4.z, tint_symbol_28_6.z, tint_symbol_23_4.xy, tint_symbol_28_6.xy, x_1516);
  tint_symbol_129 = x_1509;
  let x_1525 = tint_symbol_129;
  let x_1517 = tint_symbol_122(-(x_1506.z), x_1506.xy, tint_symbol_23_4.z, tint_symbol_28_6.z, tint_symbol_23_4.xy, tint_symbol_28_6.xy, x_1525);
  tint_symbol_129 = x_1517;
  let x_1534 = tint_symbol_129;
  let x_1526 = tint_symbol_122(-(x_1506.x), x_1506.yz, tint_symbol_23_4.x, tint_symbol_28_6.x, tint_symbol_23_4.yz, tint_symbol_28_6.yz, x_1534);
  tint_symbol_129 = x_1526;
  let x_1542 = tint_symbol_129;
  let x_1535 = tint_symbol_122(x_1506.x, x_1506.yz, tint_symbol_23_4.x, tint_symbol_28_6.x, tint_symbol_23_4.yz, tint_symbol_28_6.yz, x_1542);
  tint_symbol_129 = x_1535;
  let x_1550 = tint_symbol_129;
  let x_1543 = tint_symbol_122(x_1506.y, x_1506.xz, tint_symbol_23_4.y, tint_symbol_28_6.y, tint_symbol_23_4.xz, tint_symbol_28_6.xz, x_1550);
  tint_symbol_129 = x_1543;
  let x_1559 = tint_symbol_129;
  let x_1551 = tint_symbol_122(-(x_1506.y), x_1506.xz, tint_symbol_23_4.y, tint_symbol_28_6.y, tint_symbol_23_4.xz, tint_symbol_28_6.xz, x_1559);
  tint_symbol_129 = x_1551;
  let x_1560 = tint_symbol_129;
  return x_1560;
}

fn tint_symbol_80(tint_symbol_130 : f32, tint_symbol_126_1 : f32, tint_symbol_123_1 : f32, tint_symbol_131 : vec2f, tint_symbol_132 : vec2f, tint_symbol_124_1 : f32, tint_symbol_125_1 : f32, tint_symbol_23_5 : vec2f, tint_symbol_28_7 : vec2f) -> f32 {
  var tint_symbol_127_1 = 0.0f;
  var x_1589 : bool;
  var x_1590 : bool;
  var x_1595 : bool;
  var x_1596 : bool;
  var x_1601 : bool;
  var x_1602 : bool;
  tint_symbol_127_1 = tint_symbol_126_1;
  if ((abs(tint_symbol_125_1) > 0.00000000999999993923f)) {
    let x_1579 = ((tint_symbol_123_1 - tint_symbol_124_1) / tint_symbol_125_1);
    let x_1581 = (tint_symbol_23_5 + (tint_symbol_28_7 * x_1579));
    let x_1584 = (tint_symbol_131.x < x_1581.x);
    x_1590 = x_1584;
    if (x_1584) {
      x_1589 = (x_1581.x < tint_symbol_132.x);
      x_1590 = x_1589;
    }
    x_1596 = x_1590;
    if (x_1590) {
      x_1595 = (tint_symbol_131.y < x_1581.y);
      x_1596 = x_1595;
    }
    x_1602 = x_1596;
    if (x_1596) {
      x_1601 = (x_1581.y < tint_symbol_132.y);
      x_1602 = x_1601;
    }
    var x_1609 : bool;
    var x_1610 : bool;
    if (x_1602) {
      let x_1605 = (x_1579 > tint_symbol_130);
      x_1610 = x_1605;
      if (x_1605) {
        x_1609 = (tint_symbol_127_1 < x_1579);
        x_1610 = x_1609;
      }
      if (x_1610) {
        tint_symbol_127_1 = x_1579;
      }
    }
  }
  let x_1613 = tint_symbol_127_1;
  return x_1613;
}

const x_1625 = vec4f(0.69999998807907104492f, 0.85000002384185791016f, 1.0f, 1.0f);

const x_1724 = vec3u(1u);

const x_1917 = vec4f(0.30000001192092895508f, 0.30000001192092895508f, 0.30000001192092895508f, 1.0f);

fn tint_symbol_58(tint_symbol_59 : vec2i, tint_symbol_23_6 : vec3f, tint_symbol_28_8 : vec3f) {
  var tint_symbol_60 = vec2f();
  var tint_symbol_62 = vec4f();
  var tint_symbol_64 = 0.0f;
  var x_1664 = vec3f();
  var tint_symbol_69 = vec4f();
  var x_1683 = vec4f();
  var tint_symbol_71 = 0.0f;
  var tint_symbol_74 = vec3u();
  var tint_symbol_76 = 0.0f;
  var x_1872 = vec4f();
  var x_1918 = vec4f();
  var x_1634 : bool;
  var x_1635 : bool;
  let x_1622 = tint_symbol_61(tint_symbol_23_6, tint_symbol_28_8);
  tint_symbol_60 = x_1622;
  tint_symbol_62 = x_1625;
  let x_1629 = (tint_symbol_60.y < 0.0f);
  x_1635 = x_1629;
  if (x_1629) {
    x_1634 = (tint_symbol_60.x > 0.0f);
    x_1635 = x_1634;
  }
  if (x_1635) {
    tint_symbol_60.y = tint_symbol_60.x;
    tint_symbol_60.x = 0.0f;
  }
  var x_1889 : bool;
  var x_1890 : bool;
  var x_1894 : bool;
  var x_1895 : bool;
  var x_1900 : bool;
  var x_1901 : bool;
  var x_1905 : bool;
  var x_1906 : bool;
  var x_1911 : bool;
  var x_1912 : bool;
  if ((tint_symbol_60.x >= 0.0f)) {
    tint_symbol_64 = (tint_symbol_60.x + 0.00009999999747378752f);
    let x_1663 = (tint_symbol_66.inner.tint_symbol_67.xyz / vec3f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
    tint_symbol_69 = vec4f();
    let x_1682 = (((tint_symbol_66.inner.tint_symbol_68 * tint_symbol_66.inner.tint_symbol_67) * 0.5f) / vec4f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
    tint_symbol_71 = 1.0f;
    loop {
      var x_1699 : bool;
      var x_1700 : bool;
      let x_1694 = (tint_symbol_64 < tint_symbol_60.y);
      x_1700 = x_1694;
      if (x_1694) {
        x_1699 = (tint_symbol_71 > 0.00999999977648258209f);
        x_1700 = x_1699;
      }
      if (!(x_1700)) {
        break;
      }
      let x_1710 = (((tint_symbol_23_6 + (tint_symbol_28_8 * tint_symbol_64)) + x_1682.xyz) / (x_1682.xyz * 2.0f));
      let x_1713 = tint_symbol_66.inner.tint_symbol_68;
      let x_1711 = tint_ftou((x_1710 * x_1713.xyz));
      tint_symbol_74 = x_1711;
      let x_1719 = tint_symbol_74;
      let x_1722 = tint_symbol_66.inner.tint_symbol_68;
      let x_1720 = tint_ftou(x_1722.xyz);
      tint_symbol_74 = min(x_1719, (x_1720 - x_1724));
      let x_1728 = tint_symbol_74.x;
      let x_1730 = tint_symbol_74.y;
      let x_1733 = tint_symbol_66.inner.tint_symbol_68.x;
      let x_1731 = tint_ftou_1(x_1733);
      let x_1737 = tint_symbol_74.z;
      let x_1740 = tint_symbol_66.inner.tint_symbol_68.x;
      let x_1738 = tint_ftou_1(x_1740);
      let x_1744 = tint_symbol_66.inner.tint_symbol_68.y;
      let x_1742 = tint_ftou_1(x_1744);
      let x_1746 = ((x_1728 + (x_1730 * x_1731)) + ((x_1737 * x_1738) * x_1742));
      tint_symbol_76 = tint_symbol_60.y;
      if ((x_1746 < arrayLength(&(tint_symbol_77.inner)))) {
        let x_1767 = (((floor((x_1710 * tint_symbol_66.inner.tint_symbol_68.xyz)) / tint_symbol_66.inner.tint_symbol_68.xyz) * (x_1682.xyz * 2.0f)) - x_1682.xyz);
        let x_1768 = (x_1767 + x_1663);
        let x_1771 = tint_symbol_60.x;
        let x_1772 = tint_symbol_76;
        let x_1769 = tint_symbol_80(x_1771, x_1772, x_1767.x, x_1767.yz, x_1768.yz, tint_symbol_23_6.x, tint_symbol_28_8.x, tint_symbol_23_6.yz, tint_symbol_28_8.yz);
        tint_symbol_76 = x_1769;
        let x_1782 = tint_symbol_60.x;
        let x_1783 = tint_symbol_76;
        let x_1780 = tint_symbol_80(x_1782, x_1783, x_1768.x, x_1767.yz, x_1768.yz, tint_symbol_23_6.x, tint_symbol_28_8.x, tint_symbol_23_6.yz, tint_symbol_28_8.yz);
        tint_symbol_76 = x_1780;
        let x_1793 = tint_symbol_60.x;
        let x_1794 = tint_symbol_76;
        let x_1791 = tint_symbol_80(x_1793, x_1794, x_1767.y, x_1767.xz, x_1768.xz, tint_symbol_23_6.y, tint_symbol_28_8.y, tint_symbol_23_6.xz, tint_symbol_28_8.xz);
        tint_symbol_76 = x_1791;
        let x_1804 = tint_symbol_60.x;
        let x_1805 = tint_symbol_76;
        let x_1802 = tint_symbol_80(x_1804, x_1805, x_1768.y, x_1767.xz, x_1768.xz, tint_symbol_23_6.y, tint_symbol_28_8.y, tint_symbol_23_6.xz, tint_symbol_28_8.xz);
        tint_symbol_76 = x_1802;
        let x_1815 = tint_symbol_60.x;
        let x_1816 = tint_symbol_76;
        let x_1813 = tint_symbol_80(x_1815, x_1816, x_1767.z, x_1767.xy, x_1768.xy, tint_symbol_23_6.z, tint_symbol_28_8.z, tint_symbol_23_6.xy, tint_symbol_28_8.xy);
        tint_symbol_76 = x_1813;
        let x_1826 = tint_symbol_60.x;
        let x_1827 = tint_symbol_76;
        let x_1824 = tint_symbol_80(x_1826, x_1827, x_1768.z, x_1767.xy, x_1768.xy, tint_symbol_23_6.z, tint_symbol_28_8.z, tint_symbol_23_6.xy, tint_symbol_28_8.xy);
        tint_symbol_76 = x_1824;
        let x_1837 = tint_symbol_77.inner[x_1746];
        let x_1839 = tint_symbol_66.inner.tint_symbol_82;
        let x_1841 = tint_symbol_51((x_1837 / x_1839));
        let x_1848 = (x_1841.w * 0.15000000596046447754f);
        tint_symbol_69 = (tint_symbol_69 + (vec4f(x_1841.x, x_1841.y, x_1841.z, 1.0f) * (x_1848 * tint_symbol_71)));
        tint_symbol_71 = (tint_symbol_71 * (1.0f - x_1848));
      }
      tint_symbol_64 = (tint_symbol_76 + 0.00009999999747378752f);
    }
    if ((tint_symbol_71 > 0.94999998807907104492f)) {
      tint_symbol_62 = x_1625;
    } else {
      tint_symbol_69.w = (1.0f - tint_symbol_71);
      tint_symbol_62 = mix(x_1625, tint_symbol_69, vec4f(tint_symbol_69.w));
    }
    let x_1882 = (((tint_symbol_23_6 + (tint_symbol_28_8 * tint_symbol_60.y)) + x_1682.xyz) / (x_1682.xyz * 2.0f));
    let x_1884 = (x_1882.x < 0.00999999977648258209f);
    x_1890 = x_1884;
    if (x_1884) {
    } else {
      x_1889 = (x_1882.x > (1.0f - 0.00999999977648258209f));
      x_1890 = x_1889;
    }
    x_1895 = x_1890;
    if (x_1890) {
    } else {
      x_1894 = (x_1882.y < 0.00999999977648258209f);
      x_1895 = x_1894;
    }
    x_1901 = x_1895;
    if (x_1895) {
    } else {
      x_1900 = (x_1882.y > (1.0f - 0.00999999977648258209f));
      x_1901 = x_1900;
    }
    x_1906 = x_1901;
    if (x_1901) {
    } else {
      x_1905 = (x_1882.z < 0.00999999977648258209f);
      x_1906 = x_1905;
    }
    x_1912 = x_1906;
    if (x_1906) {
    } else {
      x_1911 = (x_1882.z > (1.0f - 0.00999999977648258209f));
      x_1912 = x_1911;
    }
    if (x_1912) {
      tint_symbol_62 = mix(tint_symbol_62, x_1917, vec4f(0.30000001192092895508f));
    }
  }
  let x_1922 = tint_symbol_62;
  textureStore(tint_symbol_89, tint_symbol_59, x_1922);
  return;
}

fn tint_symbol_90(tint_symbol_59_1 : vec2i, tint_symbol_23_7 : vec3f, tint_symbol_28_9 : vec3f) {
  var tint_symbol_60_1 = vec2f();
  var tint_symbol_62_1 = vec4f();
  var tint_symbol_64_1 = 0.0f;
  var x_1967 = vec3f();
  var tint_symbol_69_1 = vec4f();
  var x_1985 = vec4f();
  var tint_symbol_71_1 = 0.0f;
  var tint_symbol_74_1 = vec3u();
  var tint_symbol_76_1 = 0.0f;
  var x_2163 = vec4f();
  var x_2208 = vec4f();
  var x_1938 : bool;
  var x_1939 : bool;
  let x_1928 = tint_symbol_61(tint_symbol_23_7, tint_symbol_28_9);
  tint_symbol_60_1 = x_1928;
  tint_symbol_62_1 = x_1625;
  let x_1933 = (tint_symbol_60_1.y < 0.0f);
  x_1939 = x_1933;
  if (x_1933) {
    x_1938 = (tint_symbol_60_1.x > 0.0f);
    x_1939 = x_1938;
  }
  if (x_1939) {
    tint_symbol_60_1.y = tint_symbol_60_1.x;
    tint_symbol_60_1.x = 0.0f;
  }
  var x_2180 : bool;
  var x_2181 : bool;
  var x_2185 : bool;
  var x_2186 : bool;
  var x_2191 : bool;
  var x_2192 : bool;
  var x_2196 : bool;
  var x_2197 : bool;
  var x_2202 : bool;
  var x_2203 : bool;
  if ((tint_symbol_60_1.x >= 0.0f)) {
    tint_symbol_64_1 = (tint_symbol_60_1.x + 0.00009999999747378752f);
    let x_1966 = (tint_symbol_66.inner.tint_symbol_67.xyz / vec3f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
    tint_symbol_69_1 = vec4f();
    let x_1984 = (((tint_symbol_66.inner.tint_symbol_68 * tint_symbol_66.inner.tint_symbol_67) * 0.5f) / vec4f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
    tint_symbol_71_1 = 1.0f;
    loop {
      var x_2000 : bool;
      var x_2001 : bool;
      let x_1996 = (tint_symbol_64_1 < tint_symbol_60_1.y);
      x_2001 = x_1996;
      if (x_1996) {
        x_2000 = (tint_symbol_71_1 > 0.00999999977648258209f);
        x_2001 = x_2000;
      }
      if (!(x_2001)) {
        break;
      }
      let x_2011 = (((tint_symbol_23_7 + (tint_symbol_28_9 * tint_symbol_64_1)) + x_1984.xyz) / (x_1984.xyz * 2.0f));
      let x_2014 = tint_symbol_66.inner.tint_symbol_68;
      let x_2012 = tint_ftou((x_2011 * x_2014.xyz));
      tint_symbol_74_1 = x_2012;
      let x_2019 = tint_symbol_74_1;
      let x_2022 = tint_symbol_66.inner.tint_symbol_68;
      let x_2020 = tint_ftou(x_2022.xyz);
      tint_symbol_74_1 = min(x_2019, (x_2020 - x_1724));
      let x_2026 = tint_symbol_74_1.x;
      let x_2028 = tint_symbol_74_1.y;
      let x_2031 = tint_symbol_66.inner.tint_symbol_68.x;
      let x_2029 = tint_ftou_1(x_2031);
      let x_2035 = tint_symbol_74_1.z;
      let x_2038 = tint_symbol_66.inner.tint_symbol_68.x;
      let x_2036 = tint_ftou_1(x_2038);
      let x_2042 = tint_symbol_66.inner.tint_symbol_68.y;
      let x_2040 = tint_ftou_1(x_2042);
      let x_2044 = ((x_2026 + (x_2028 * x_2029)) + ((x_2035 * x_2036) * x_2040));
      tint_symbol_76_1 = tint_symbol_60_1.y;
      if ((x_2044 < arrayLength(&(tint_symbol_77.inner)))) {
        let x_2065 = (((floor((x_2011 * tint_symbol_66.inner.tint_symbol_68.xyz)) / tint_symbol_66.inner.tint_symbol_68.xyz) * (x_1984.xyz * 2.0f)) - x_1984.xyz);
        let x_2066 = (x_2065 + x_1966);
        let x_2069 = tint_symbol_60_1.x;
        let x_2070 = tint_symbol_76_1;
        let x_2067 = tint_symbol_80(x_2069, x_2070, x_2065.x, x_2065.yz, x_2066.yz, tint_symbol_23_7.x, tint_symbol_28_9.x, tint_symbol_23_7.yz, tint_symbol_28_9.yz);
        tint_symbol_76_1 = x_2067;
        let x_2080 = tint_symbol_60_1.x;
        let x_2081 = tint_symbol_76_1;
        let x_2078 = tint_symbol_80(x_2080, x_2081, x_2066.x, x_2065.yz, x_2066.yz, tint_symbol_23_7.x, tint_symbol_28_9.x, tint_symbol_23_7.yz, tint_symbol_28_9.yz);
        tint_symbol_76_1 = x_2078;
        let x_2091 = tint_symbol_60_1.x;
        let x_2092 = tint_symbol_76_1;
        let x_2089 = tint_symbol_80(x_2091, x_2092, x_2065.y, x_2065.xz, x_2066.xz, tint_symbol_23_7.y, tint_symbol_28_9.y, tint_symbol_23_7.xz, tint_symbol_28_9.xz);
        tint_symbol_76_1 = x_2089;
        let x_2102 = tint_symbol_60_1.x;
        let x_2103 = tint_symbol_76_1;
        let x_2100 = tint_symbol_80(x_2102, x_2103, x_2066.y, x_2065.xz, x_2066.xz, tint_symbol_23_7.y, tint_symbol_28_9.y, tint_symbol_23_7.xz, tint_symbol_28_9.xz);
        tint_symbol_76_1 = x_2100;
        let x_2113 = tint_symbol_60_1.x;
        let x_2114 = tint_symbol_76_1;
        let x_2111 = tint_symbol_80(x_2113, x_2114, x_2065.z, x_2065.xy, x_2066.xy, tint_symbol_23_7.z, tint_symbol_28_9.z, tint_symbol_23_7.xy, tint_symbol_28_9.xy);
        tint_symbol_76_1 = x_2111;
        let x_2124 = tint_symbol_60_1.x;
        let x_2125 = tint_symbol_76_1;
        let x_2122 = tint_symbol_80(x_2124, x_2125, x_2066.z, x_2065.xy, x_2066.xy, tint_symbol_23_7.z, tint_symbol_28_9.z, tint_symbol_23_7.xy, tint_symbol_28_9.xy);
        tint_symbol_76_1 = x_2122;
        let x_2137 = (tint_symbol_77.inner[x_2044] / tint_symbol_66.inner.tint_symbol_82);
        let x_2138 = (x_2137 * 0.10000000149011611938f);
        tint_symbol_69_1 = (tint_symbol_69_1 + (vec4f(x_2137, 0.20000000298023223877f, (1.0f - x_2137), 1.0f) * (x_2138 * tint_symbol_71_1)));
        tint_symbol_71_1 = (tint_symbol_71_1 * (1.0f - x_2138));
      }
      tint_symbol_64_1 = (tint_symbol_76_1 + 0.00009999999747378752f);
    }
    if ((tint_symbol_71_1 > 0.94999998807907104492f)) {
      tint_symbol_62_1 = x_1625;
    } else {
      tint_symbol_69_1.w = (1.0f - tint_symbol_71_1);
      tint_symbol_62_1 = mix(x_1625, tint_symbol_69_1, vec4f(tint_symbol_69_1.w));
    }
    let x_2173 = (((tint_symbol_23_7 + (tint_symbol_28_9 * tint_symbol_60_1.y)) + x_1984.xyz) / (x_1984.xyz * 2.0f));
    let x_2175 = (x_2173.x < 0.00999999977648258209f);
    x_2181 = x_2175;
    if (x_2175) {
    } else {
      x_2180 = (x_2173.x > (1.0f - 0.00999999977648258209f));
      x_2181 = x_2180;
    }
    x_2186 = x_2181;
    if (x_2181) {
    } else {
      x_2185 = (x_2173.y < 0.00999999977648258209f);
      x_2186 = x_2185;
    }
    x_2192 = x_2186;
    if (x_2186) {
    } else {
      x_2191 = (x_2173.y > (1.0f - 0.00999999977648258209f));
      x_2192 = x_2191;
    }
    x_2197 = x_2192;
    if (x_2192) {
    } else {
      x_2196 = (x_2173.z < 0.00999999977648258209f);
      x_2197 = x_2196;
    }
    x_2203 = x_2197;
    if (x_2197) {
    } else {
      x_2202 = (x_2173.z > (1.0f - 0.00999999977648258209f));
      x_2203 = x_2202;
    }
    if (x_2203) {
      tint_symbol_62_1 = mix(tint_symbol_62_1, x_1917, vec4f(0.30000001192092895508f));
    }
  }
  let x_2212 = tint_symbol_62_1;
  textureStore(tint_symbol_89, tint_symbol_59_1, x_2212);
  return;
}

fn tint_symbol_95(tint_symbol_39 : tint_symbol, tint_symbol_96 : tint_symbol) -> tint_symbol_92 {
  var tint_symbol_98 = tint_symbol_92(vec3f(), false, false);
  var x_2237 : bool;
  var x_2238 : bool;
  var x_2243 : bool;
  var x_2244 : bool;
  var x_2249 : bool;
  var x_2250 : bool;
  let x_2219 = tint_symbol_17(tint_symbol_39, tint_symbol_96);
  let x_2224 = tint_symbol_42(x_2219);
  tint_symbol_98.tint_symbol_23 = x_2224;
  tint_symbol_98.tint_symbol_93 = !((abs(x_2219.tint_symbol_8) <= 0.00000000999999993923f));
  let x_2232 = tint_symbol_98.tint_symbol_93;
  x_2238 = x_2232;
  if (x_2232) {
    x_2237 = (abs(x_2219.tint_symbol_9) <= 0.00000000999999993923f);
    x_2238 = x_2237;
  }
  x_2244 = x_2238;
  if (x_2238) {
    x_2243 = (abs(x_2219.tint_symbol_10) <= 0.00000000999999993923f);
    x_2244 = x_2243;
  }
  x_2250 = x_2244;
  if (x_2244) {
    x_2249 = (abs(x_2219.tint_symbol_11) <= 0.00000000999999993923f);
    x_2250 = x_2249;
  }
  tint_symbol_98.tint_symbol_94 = x_2250;
  let x_2251 = tint_symbol_98;
  return x_2251;
}

fn tint_symbol_100(tint_symbol_23_8 : vec3f, tint_symbol_24_5 : tint_symbol) -> vec3f {
  let x_2257 = tint_symbol_41(tint_symbol_23_8);
  let x_2258 = tint_symbol_22(x_2257, tint_symbol_24_5);
  let x_2259 = tint_symbol_42(x_2258);
  return x_2259;
}

fn tint_symbol_101(tint_symbol_28_10 : vec3f, tint_symbol_24_6 : tint_symbol) -> vec3f {
  let x_2264 = tint_symbol_40(tint_symbol_24_6);
  let x_2265 = tint_symbol_41(tint_symbol_28_10);
  let x_2266 = tint_symbol_22(x_2265, x_2264);
  let x_2267 = tint_symbol_42(x_2266);
  return x_2267;
}

fn tint_symbol_113(tint_symbol_28_11 : vec3f) -> vec3f {
  var tint_symbol_114 = vec3f();
  let x_2275 = tint_symbol_111.inner.tint_symbol_104;
  let x_2272 = tint_symbol_101(tint_symbol_28_11, x_2275);
  tint_symbol_114 = x_2272;
  let x_2277 = tint_symbol_114;
  return x_2277;
}

fn tint_symbol_115(tint_symbol_116 : vec3f) -> vec3f {
  var tint_symbol_114_1 = vec3f();
  let x_2283 = tint_symbol_111.inner.tint_symbol_104;
  let x_2281 = tint_symbol_100(tint_symbol_116, x_2283);
  tint_symbol_114_1 = x_2281;
  let x_2285 = tint_symbol_114_1;
  return x_2285;
}

const x_2293 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);

fn tint_symbol_117(tint_symbol_59_2 : vec2i) {
  var tint_symbol_62_2 = vec4f();
  tint_symbol_62_2 = x_2293;
  let x_2296 = tint_symbol_62_2;
  textureStore(tint_symbol_89, tint_symbol_59_2, x_2296);
  return;
}

const x_2304 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);

fn tint_symbol_133(tint_symbol_59_3 : vec2i, tint_symbol_23_9 : vec3f, tint_symbol_28_12 : vec3f) {
  var tint_symbol_60_2 = vec2f();
  var tint_symbol_62_3 = vec4f();
  var tint_symbol_64_2 = 0.0f;
  var x_2343 = vec3f();
  var tint_symbol_134 = 0.0f;
  var x_2361 = vec4f();
  var tint_symbol_74_2 = vec3u();
  var tint_symbol_76_2 = 0.0f;
  var x_2313 : bool;
  var x_2314 : bool;
  let x_2302 = tint_symbol_61(tint_symbol_23_9, tint_symbol_28_12);
  tint_symbol_60_2 = x_2302;
  tint_symbol_62_3 = x_2304;
  let x_2308 = (tint_symbol_60_2.y < 0.0f);
  x_2314 = x_2308;
  if (x_2308) {
    x_2313 = (tint_symbol_60_2.x > 0.0f);
    x_2314 = x_2313;
  }
  if (x_2314) {
    tint_symbol_60_2.y = tint_symbol_60_2.x;
    tint_symbol_60_2.x = 0.0f;
  }
  if ((tint_symbol_60_2.x >= 0.0f)) {
    tint_symbol_64_2 = (tint_symbol_60_2.x + 0.00009999999747378752f);
    let x_2342 = (tint_symbol_66.inner.tint_symbol_67.xyz / vec3f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
    tint_symbol_134 = 0.0f;
    let x_2360 = (((tint_symbol_66.inner.tint_symbol_68 * tint_symbol_66.inner.tint_symbol_67) * 0.5f) / vec4f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
    loop {
      if (!((tint_symbol_64_2 < tint_symbol_60_2.y))) {
        break;
      }
      let x_2381 = (((tint_symbol_23_9 + (tint_symbol_28_12 * tint_symbol_64_2)) + x_2360.xyz) / (x_2360.xyz * 2.0f));
      let x_2384 = tint_symbol_66.inner.tint_symbol_68;
      let x_2382 = tint_ftou((x_2381 * x_2384.xyz));
      tint_symbol_74_2 = x_2382;
      let x_2389 = tint_symbol_74_2;
      let x_2392 = tint_symbol_66.inner.tint_symbol_68;
      let x_2390 = tint_ftou(x_2392.xyz);
      tint_symbol_74_2 = min(x_2389, (x_2390 - x_1724));
      let x_2396 = tint_symbol_74_2.x;
      let x_2398 = tint_symbol_74_2.y;
      let x_2401 = tint_symbol_66.inner.tint_symbol_68.x;
      let x_2399 = tint_ftou_1(x_2401);
      let x_2405 = tint_symbol_74_2.z;
      let x_2408 = tint_symbol_66.inner.tint_symbol_68.x;
      let x_2410 = tint_symbol_66.inner.tint_symbol_68.y;
      let x_2406 = tint_ftou_1((x_2408 * x_2410));
      let x_2413 = ((x_2396 + (x_2398 * x_2399)) + (x_2405 * x_2406));
      if ((x_2413 < arrayLength(&(tint_symbol_77.inner)))) {
        tint_symbol_134 = max(tint_symbol_134, tint_symbol_77.inner[x_2413]);
      }
      let x_2435 = (((floor((x_2381 * tint_symbol_66.inner.tint_symbol_68.xyz)) / tint_symbol_66.inner.tint_symbol_68.xyz) * (x_2360.xyz * 2.0f)) - x_2360.xyz);
      let x_2436 = (x_2435 + x_2342);
      tint_symbol_76_2 = tint_symbol_60_2.y;
      let x_2442 = tint_symbol_60_2.x;
      let x_2443 = tint_symbol_76_2;
      let x_2440 = tint_symbol_80(x_2442, x_2443, x_2435.x, x_2435.yz, x_2436.yz, tint_symbol_23_9.x, tint_symbol_28_12.x, tint_symbol_23_9.yz, tint_symbol_28_12.yz);
      tint_symbol_76_2 = x_2440;
      let x_2453 = tint_symbol_60_2.x;
      let x_2454 = tint_symbol_76_2;
      let x_2451 = tint_symbol_80(x_2453, x_2454, x_2436.x, x_2435.yz, x_2436.yz, tint_symbol_23_9.x, tint_symbol_28_12.x, tint_symbol_23_9.yz, tint_symbol_28_12.yz);
      tint_symbol_76_2 = x_2451;
      let x_2464 = tint_symbol_60_2.x;
      let x_2465 = tint_symbol_76_2;
      let x_2462 = tint_symbol_80(x_2464, x_2465, x_2435.y, x_2435.xz, x_2436.xz, tint_symbol_23_9.y, tint_symbol_28_12.y, tint_symbol_23_9.xz, tint_symbol_28_12.xz);
      tint_symbol_76_2 = x_2462;
      let x_2475 = tint_symbol_60_2.x;
      let x_2476 = tint_symbol_76_2;
      let x_2473 = tint_symbol_80(x_2475, x_2476, x_2436.y, x_2435.xz, x_2436.xz, tint_symbol_23_9.y, tint_symbol_28_12.y, tint_symbol_23_9.xz, tint_symbol_28_12.xz);
      tint_symbol_76_2 = x_2473;
      let x_2486 = tint_symbol_60_2.x;
      let x_2487 = tint_symbol_76_2;
      let x_2484 = tint_symbol_80(x_2486, x_2487, x_2435.z, x_2435.xy, x_2436.xy, tint_symbol_23_9.z, tint_symbol_28_12.z, tint_symbol_23_9.xy, tint_symbol_28_12.xy);
      tint_symbol_76_2 = x_2484;
      let x_2497 = tint_symbol_60_2.x;
      let x_2498 = tint_symbol_76_2;
      let x_2495 = tint_symbol_80(x_2497, x_2498, x_2436.z, x_2435.xy, x_2436.xy, tint_symbol_23_9.z, tint_symbol_28_12.z, tint_symbol_23_9.xy, tint_symbol_28_12.xy);
      tint_symbol_76_2 = x_2495;
      tint_symbol_64_2 = (tint_symbol_76_2 + 0.00009999999747378752f);
    }
    let x_2511 = (tint_symbol_134 / tint_symbol_66.inner.tint_symbol_82);
    tint_symbol_62_3 = vec4f(x_2511, x_2511, x_2511, 1.0f);
  } else {
    tint_symbol_62_3 = x_2293;
  }
  let x_2515 = tint_symbol_62_3;
  textureStore(tint_symbol_89, tint_symbol_59_3, x_2515);
  return;
}

fn tint_symbol_136(tint_symbol_59_4 : vec2i, tint_symbol_23_10 : vec3f, tint_symbol_28_13 : vec3f) {
  var tint_symbol_60_3 = vec2f();
  var tint_symbol_62_4 = vec4f();
  var tint_symbol_64_3 = 0.0f;
  var x_2561 = vec3f();
  var tint_symbol_137 = 0.0f;
  var x_2579 = vec4f();
  var tint_symbol_74_3 = vec3u();
  var tint_symbol_76_3 = 0.0f;
  var x_2531 : bool;
  var x_2532 : bool;
  let x_2521 = tint_symbol_61(tint_symbol_23_10, tint_symbol_28_13);
  tint_symbol_60_3 = x_2521;
  tint_symbol_62_4 = x_2304;
  let x_2526 = (tint_symbol_60_3.y < 0.0f);
  x_2532 = x_2526;
  if (x_2526) {
    x_2531 = (tint_symbol_60_3.x > 0.0f);
    x_2532 = x_2531;
  }
  if (x_2532) {
    tint_symbol_60_3.y = tint_symbol_60_3.x;
    tint_symbol_60_3.x = 0.0f;
  }
  if ((tint_symbol_60_3.x >= 0.0f)) {
    tint_symbol_64_3 = (tint_symbol_60_3.x + 0.00009999999747378752f);
    let x_2560 = (tint_symbol_66.inner.tint_symbol_67.xyz / vec3f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
    tint_symbol_137 = 0.0f;
    let x_2578 = (((tint_symbol_66.inner.tint_symbol_68 * tint_symbol_66.inner.tint_symbol_67) * 0.5f) / vec4f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
    loop {
      if (!((tint_symbol_64_3 < tint_symbol_60_3.y))) {
        break;
      }
      let x_2599 = (((tint_symbol_23_10 + (tint_symbol_28_13 * tint_symbol_64_3)) + x_2578.xyz) / (x_2578.xyz * 2.0f));
      let x_2602 = tint_symbol_66.inner.tint_symbol_68;
      let x_2600 = tint_ftou((x_2599 * x_2602.xyz));
      tint_symbol_74_3 = x_2600;
      let x_2607 = tint_symbol_74_3;
      let x_2610 = tint_symbol_66.inner.tint_symbol_68;
      let x_2608 = tint_ftou(x_2610.xyz);
      tint_symbol_74_3 = min(x_2607, (x_2608 - x_1724));
      let x_2614 = tint_symbol_74_3.x;
      let x_2616 = tint_symbol_74_3.y;
      let x_2619 = tint_symbol_66.inner.tint_symbol_68.x;
      let x_2617 = tint_ftou_1(x_2619);
      let x_2623 = tint_symbol_74_3.z;
      let x_2626 = tint_symbol_66.inner.tint_symbol_68.x;
      let x_2624 = tint_ftou_1(x_2626);
      let x_2630 = tint_symbol_66.inner.tint_symbol_68.y;
      let x_2628 = tint_ftou_1(x_2630);
      let x_2632 = ((x_2614 + (x_2616 * x_2617)) + ((x_2623 * x_2624) * x_2628));
      let x_2646 = (((floor((x_2599 * tint_symbol_66.inner.tint_symbol_68.xyz)) / tint_symbol_66.inner.tint_symbol_68.xyz) * (x_2578.xyz * 2.0f)) - x_2578.xyz);
      let x_2647 = (x_2646 + x_2560);
      tint_symbol_76_3 = tint_symbol_60_3.y;
      let x_2653 = tint_symbol_60_3.x;
      let x_2654 = tint_symbol_76_3;
      let x_2651 = tint_symbol_80(x_2653, x_2654, x_2646.x, x_2646.yz, x_2647.yz, tint_symbol_23_10.x, tint_symbol_28_13.x, tint_symbol_23_10.yz, tint_symbol_28_13.yz);
      tint_symbol_76_3 = x_2651;
      let x_2664 = tint_symbol_60_3.x;
      let x_2665 = tint_symbol_76_3;
      let x_2662 = tint_symbol_80(x_2664, x_2665, x_2647.x, x_2646.yz, x_2647.yz, tint_symbol_23_10.x, tint_symbol_28_13.x, tint_symbol_23_10.yz, tint_symbol_28_13.yz);
      tint_symbol_76_3 = x_2662;
      let x_2675 = tint_symbol_60_3.x;
      let x_2676 = tint_symbol_76_3;
      let x_2673 = tint_symbol_80(x_2675, x_2676, x_2646.y, x_2646.xz, x_2647.xz, tint_symbol_23_10.y, tint_symbol_28_13.y, tint_symbol_23_10.xz, tint_symbol_28_13.xz);
      tint_symbol_76_3 = x_2673;
      let x_2686 = tint_symbol_60_3.x;
      let x_2687 = tint_symbol_76_3;
      let x_2684 = tint_symbol_80(x_2686, x_2687, x_2647.y, x_2646.xz, x_2647.xz, tint_symbol_23_10.y, tint_symbol_28_13.y, tint_symbol_23_10.xz, tint_symbol_28_13.xz);
      tint_symbol_76_3 = x_2684;
      let x_2697 = tint_symbol_60_3.x;
      let x_2698 = tint_symbol_76_3;
      let x_2695 = tint_symbol_80(x_2697, x_2698, x_2646.z, x_2646.xy, x_2647.xy, tint_symbol_23_10.z, tint_symbol_28_13.z, tint_symbol_23_10.xy, tint_symbol_28_13.xy);
      tint_symbol_76_3 = x_2695;
      let x_2708 = tint_symbol_60_3.x;
      let x_2709 = tint_symbol_76_3;
      let x_2706 = tint_symbol_80(x_2708, x_2709, x_2647.z, x_2646.xy, x_2647.xy, tint_symbol_23_10.z, tint_symbol_28_13.z, tint_symbol_23_10.xy, tint_symbol_28_13.xy);
      tint_symbol_76_3 = x_2706;
      let x_2717 = tint_symbol_76_3;
      let x_2718 = tint_symbol_64_3;
      if ((x_2632 < arrayLength(&(tint_symbol_77.inner)))) {
        tint_symbol_137 = (tint_symbol_137 + ((((x_2717 - x_2718) + 0.00009999999747378752f) * tint_symbol_77.inner[x_2632]) / tint_symbol_66.inner.tint_symbol_82));
      }
      tint_symbol_64_3 = (tint_symbol_76_3 + 0.00009999999747378752f);
    }
    let x_2739 = clamp((1.0f - exp(-(tint_symbol_137))), 0.0f, 1.0f);
    tint_symbol_62_4 = vec4f(x_2739, x_2739, x_2739, 1.0f);
  } else {
    tint_symbol_62_4 = x_2293;
  }
  let x_2743 = tint_symbol_62_4;
  textureStore(tint_symbol_89, tint_symbol_59_4, x_2743);
  return;
}

fn tint_symbol_140(tint_symbol_59_5 : vec2i, tint_symbol_23_11 : vec3f, tint_symbol_28_14 : vec3f) {
  var tint_symbol_60_4 = vec2f();
  var tint_symbol_62_5 = vec4f();
  var x_2759 : bool;
  var x_2760 : bool;
  let x_2749 = tint_symbol_61(tint_symbol_23_11, tint_symbol_28_14);
  tint_symbol_60_4 = x_2749;
  tint_symbol_62_5 = x_2304;
  let x_2754 = (tint_symbol_60_4.y < 0.0f);
  x_2760 = x_2754;
  if (x_2754) {
    x_2759 = (tint_symbol_60_4.x > 0.0f);
    x_2760 = x_2759;
  }
  if (x_2760) {
    tint_symbol_60_4.y = tint_symbol_60_4.x;
    tint_symbol_60_4.x = 0.0f;
  }
  if ((tint_symbol_60_4.x >= 0.0f)) {
    let x_2777 = (tint_symbol_60_4.y - tint_symbol_60_4.x);
    tint_symbol_62_5 = vec4f(x_2777, (1.0f - x_2777), 0.0f, 1.0f);
  } else {
    tint_symbol_62_5 = x_2293;
  }
  let x_2782 = tint_symbol_62_5;
  textureStore(tint_symbol_89, tint_symbol_59_5, x_2782);
  return;
}

const x_2793 = vec4f(0.0f, 1.0f, 0.0f, 1.0f);

fn tint_symbol_142(tint_symbol_143 : f32, tint_symbol_144 : f32, tint_symbol_145 : f32, tint_symbol_146 : f32) -> vec4f {
  var tint_return_flag_2 = false;
  var tint_return_value_2 = vec4f();
  let x_2796 = ((tint_symbol_144 + tint_symbol_143) * 0.5f);
  let x_2798 = ((tint_symbol_146 + tint_symbol_145) * 0.5f);
  if ((x_2796 > x_2798)) {
    let x_2804 = ((x_2796 - x_2798) / (tint_symbol_146 - x_2798));
    tint_return_flag_2 = true;
    tint_return_value_2 = ((vec4f(0.0f, 0.0f, 1.0f, 1.0f) * x_2804) + (x_2793 * (1.0f - x_2804)));
  }
  if (!(tint_return_flag_2)) {
    let x_2815 = ((x_2798 - x_2796) / (x_2798 - tint_symbol_145));
    tint_return_flag_2 = true;
    tint_return_value_2 = ((vec4f(1.0f, 0.0f, 0.0f, 1.0f) * x_2815) + (x_2793 * (1.0f - x_2815)));
  }
  let x_2820 = tint_return_value_2;
  return x_2820;
}

fn tint_symbol_148(tint_symbol_59_6 : vec2i, tint_symbol_23_12 : vec3f, tint_symbol_28_15 : vec3f) {
  var tint_symbol_60_5 = vec2f();
  var tint_symbol_62_6 = vec4f();
  var tint_symbol_64_4 = 0.0f;
  var x_2866 = vec3f();
  var tint_symbol_69_2 = vec4f();
  var x_2884 = vec4f();
  var tint_symbol_74_4 = vec3u();
  var tint_symbol_76_4 = 0.0f;
  var x_3063 = vec4f();
  var x_2836 : bool;
  var x_2837 : bool;
  let x_2826 = tint_symbol_61(tint_symbol_23_12, tint_symbol_28_15);
  tint_symbol_60_5 = x_2826;
  tint_symbol_62_6 = x_2304;
  let x_2831 = (tint_symbol_60_5.y < 0.0f);
  x_2837 = x_2831;
  if (x_2831) {
    x_2836 = (tint_symbol_60_5.x > 0.0f);
    x_2837 = x_2836;
  }
  if (x_2837) {
    tint_symbol_60_5.y = tint_symbol_60_5.x;
    tint_symbol_60_5.x = 0.0f;
  }
  if ((tint_symbol_60_5.x >= 0.0f)) {
    tint_symbol_64_4 = (tint_symbol_60_5.x + 0.00009999999747378752f);
    let x_2865 = (tint_symbol_66.inner.tint_symbol_67.xyz / vec3f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
    tint_symbol_69_2 = x_2304;
    let x_2883 = (((tint_symbol_66.inner.tint_symbol_68 * tint_symbol_66.inner.tint_symbol_67) * 0.5f) / vec4f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
    loop {
      if (!((tint_symbol_64_4 < tint_symbol_60_5.y))) {
        break;
      }
      var x_2904 : vec3f;
      var x_2937 : u32;
      x_2904 = (((tint_symbol_23_12 + (tint_symbol_28_15 * tint_symbol_64_4)) + x_2883.xyz) / (x_2883.xyz * 2.0f));
      let x_2907 = tint_symbol_66.inner.tint_symbol_68;
      let x_2905 = tint_ftou((x_2904 * x_2907.xyz));
      tint_symbol_74_4 = x_2905;
      let x_2912 = tint_symbol_74_4;
      let x_2915 = tint_symbol_66.inner.tint_symbol_68;
      let x_2913 = tint_ftou(x_2915.xyz);
      tint_symbol_74_4 = min(x_2912, (x_2913 - x_1724));
      let x_2919 = tint_symbol_74_4.x;
      let x_2921 = tint_symbol_74_4.y;
      let x_2924 = tint_symbol_66.inner.tint_symbol_68.x;
      let x_2922 = tint_ftou_1(x_2924);
      let x_2928 = tint_symbol_74_4.z;
      let x_2931 = tint_symbol_66.inner.tint_symbol_68.x;
      let x_2929 = tint_ftou_1(x_2931);
      let x_2935 = tint_symbol_66.inner.tint_symbol_68.y;
      let x_2933 = tint_ftou_1(x_2935);
      x_2937 = ((x_2919 + (x_2921 * x_2922)) + ((x_2928 * x_2929) * x_2933));
      if ((x_2937 < arrayLength(&(tint_symbol_77.inner)))) {
        let x_2944 = tint_symbol_77.inner[x_2937];
        let x_2958 = (((floor((x_2904 * tint_symbol_66.inner.tint_symbol_68.xyz)) / tint_symbol_66.inner.tint_symbol_68.xyz) * (x_2883.xyz * 2.0f)) - x_2883.xyz);
        let x_2959 = (x_2958 + x_2865);
        tint_symbol_76_4 = tint_symbol_60_5.y;
        let x_2965 = tint_symbol_60_5.x;
        let x_2966 = tint_symbol_76_4;
        let x_2963 = tint_symbol_80(x_2965, x_2966, x_2958.x, x_2958.yz, x_2959.yz, tint_symbol_23_12.x, tint_symbol_28_15.x, tint_symbol_23_12.yz, tint_symbol_28_15.yz);
        tint_symbol_76_4 = x_2963;
        let x_2976 = tint_symbol_60_5.x;
        let x_2977 = tint_symbol_76_4;
        let x_2974 = tint_symbol_80(x_2976, x_2977, x_2959.x, x_2958.yz, x_2959.yz, tint_symbol_23_12.x, tint_symbol_28_15.x, tint_symbol_23_12.yz, tint_symbol_28_15.yz);
        tint_symbol_76_4 = x_2974;
        let x_2987 = tint_symbol_60_5.x;
        let x_2988 = tint_symbol_76_4;
        let x_2985 = tint_symbol_80(x_2987, x_2988, x_2958.y, x_2958.xz, x_2959.xz, tint_symbol_23_12.y, tint_symbol_28_15.y, tint_symbol_23_12.xz, tint_symbol_28_15.xz);
        tint_symbol_76_4 = x_2985;
        let x_2998 = tint_symbol_60_5.x;
        let x_2999 = tint_symbol_76_4;
        let x_2996 = tint_symbol_80(x_2998, x_2999, x_2959.y, x_2958.xz, x_2959.xz, tint_symbol_23_12.y, tint_symbol_28_15.y, tint_symbol_23_12.xz, tint_symbol_28_15.xz);
        tint_symbol_76_4 = x_2996;
        let x_3009 = tint_symbol_60_5.x;
        let x_3010 = tint_symbol_76_4;
        let x_3007 = tint_symbol_80(x_3009, x_3010, x_2958.z, x_2958.xy, x_2959.xy, tint_symbol_23_12.z, tint_symbol_28_15.z, tint_symbol_23_12.xy, tint_symbol_28_15.xy);
        tint_symbol_76_4 = x_3007;
        let x_3020 = tint_symbol_60_5.x;
        let x_3021 = tint_symbol_76_4;
        let x_3018 = tint_symbol_80(x_3020, x_3021, x_2959.z, x_2958.xy, x_2959.xy, tint_symbol_23_12.z, tint_symbol_28_15.z, tint_symbol_23_12.xy, tint_symbol_28_15.xy);
        tint_symbol_76_4 = x_3018;
        let x_3029 = tint_symbol_76_4;
        let x_3030 = tint_symbol_64_4;
        if ((x_2944 > 0.0f)) {
          let x_3036 = tint_symbol_66.inner.tint_symbol_82;
          let x_3039 = tint_symbol_64_4;
          let x_3040 = tint_symbol_76_4;
          let x_3042 = tint_symbol_60_5.x;
          let x_3044 = tint_symbol_60_5.y;
          let x_3038 = tint_symbol_142(x_3039, x_3040, x_3042, x_3044);
          tint_symbol_69_2 = (tint_symbol_69_2 + (x_3038 * ((x_3029 - x_3030) * (x_2944 / x_3036))));
        }
        tint_symbol_64_4 = (tint_symbol_76_4 + 0.00009999999747378752f);
      } else {
        tint_symbol_64_4 = tint_symbol_60_5.y;
      }
    }
    let x_3057 = (tint_symbol_60_5.y - tint_symbol_60_5.x);
    if ((x_3057 > 0.0f)) {
      tint_symbol_62_6 = (tint_symbol_69_2 / vec4f(x_3057));
    }
    tint_symbol_62_6.w = 1.0f;
  } else {
    tint_symbol_62_6 = x_2293;
  }
  let x_3068 = tint_symbol_62_6;
  textureStore(tint_symbol_89, tint_symbol_59_6, x_3068);
  return;
}

fn tint_symbol_154(tint_symbol_59_7 : vec2i, tint_symbol_23_13 : vec3f, tint_symbol_28_16 : vec3f) {
  var tint_symbol_60_6 = vec2f();
  var tint_symbol_62_7 = vec4f();
  var tint_symbol_64_5 = 0.0f;
  var x_3114 = vec3f();
  var tint_symbol_69_3 = vec4f();
  var x_3132 = vec4f();
  var tint_symbol_170 = 0.0f;
  var tint_symbol_74_5 = vec3u();
  var tint_symbol_76_5 = 0.0f;
  var x_3316 = vec4f();
  var x_3361 = vec4f();
  var x_3084 : bool;
  var x_3085 : bool;
  let x_3074 = tint_symbol_61(tint_symbol_23_13, tint_symbol_28_16);
  tint_symbol_60_6 = x_3074;
  tint_symbol_62_7 = x_1625;
  let x_3079 = (tint_symbol_60_6.y < 0.0f);
  x_3085 = x_3079;
  if (x_3079) {
    x_3084 = (tint_symbol_60_6.x > 0.0f);
    x_3085 = x_3084;
  }
  if (x_3085) {
    tint_symbol_60_6.y = tint_symbol_60_6.x;
    tint_symbol_60_6.x = 0.0f;
  }
  var x_3333 : bool;
  var x_3334 : bool;
  var x_3338 : bool;
  var x_3339 : bool;
  var x_3344 : bool;
  var x_3345 : bool;
  var x_3349 : bool;
  var x_3350 : bool;
  var x_3355 : bool;
  var x_3356 : bool;
  if ((tint_symbol_60_6.x >= 0.0f)) {
    tint_symbol_64_5 = (tint_symbol_60_6.x + 0.00009999999747378752f);
    let x_3113 = (tint_symbol_66.inner.tint_symbol_67.xyz / vec3f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
    tint_symbol_69_3 = vec4f();
    let x_3131 = (((tint_symbol_66.inner.tint_symbol_68 * tint_symbol_66.inner.tint_symbol_67) * 0.5f) / vec4f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
    tint_symbol_170 = 1.0f;
    loop {
      var x_3148 : bool;
      var x_3149 : bool;
      let x_3144 = (tint_symbol_64_5 < tint_symbol_60_6.y);
      x_3149 = x_3144;
      if (x_3144) {
        x_3148 = (tint_symbol_170 > 0.00999999977648258209f);
        x_3149 = x_3148;
      }
      if (!(x_3149)) {
        break;
      }
      let x_3159 = (((tint_symbol_23_13 + (tint_symbol_28_16 * tint_symbol_64_5)) + x_3131.xyz) / (x_3131.xyz * 2.0f));
      let x_3162 = tint_symbol_66.inner.tint_symbol_68;
      let x_3160 = tint_ftou((x_3159 * x_3162.xyz));
      tint_symbol_74_5 = x_3160;
      let x_3167 = tint_symbol_74_5;
      let x_3170 = tint_symbol_66.inner.tint_symbol_68;
      let x_3168 = tint_ftou(x_3170.xyz);
      tint_symbol_74_5 = min(x_3167, (x_3168 - x_1724));
      let x_3174 = tint_symbol_74_5.x;
      let x_3176 = tint_symbol_74_5.y;
      let x_3179 = tint_symbol_66.inner.tint_symbol_68.x;
      let x_3177 = tint_ftou_1(x_3179);
      let x_3183 = tint_symbol_74_5.z;
      let x_3186 = tint_symbol_66.inner.tint_symbol_68.x;
      let x_3184 = tint_ftou_1(x_3186);
      let x_3190 = tint_symbol_66.inner.tint_symbol_68.y;
      let x_3188 = tint_ftou_1(x_3190);
      let x_3192 = ((x_3174 + (x_3176 * x_3177)) + ((x_3183 * x_3184) * x_3188));
      tint_symbol_76_5 = tint_symbol_60_6.y;
      if ((x_3192 < arrayLength(&(tint_symbol_77.inner)))) {
        let x_3214 = (((floor((x_3159 * tint_symbol_66.inner.tint_symbol_68.xyz)) / tint_symbol_66.inner.tint_symbol_68.xyz) * (x_3131.xyz * 2.0f)) - x_3131.xyz);
        let x_3215 = (x_3214 + x_3113);
        let x_3218 = tint_symbol_60_6.x;
        let x_3219 = tint_symbol_76_5;
        let x_3216 = tint_symbol_80(x_3218, x_3219, x_3214.x, x_3214.yz, x_3215.yz, tint_symbol_23_13.x, tint_symbol_28_16.x, tint_symbol_23_13.yz, tint_symbol_28_16.yz);
        tint_symbol_76_5 = x_3216;
        let x_3229 = tint_symbol_60_6.x;
        let x_3230 = tint_symbol_76_5;
        let x_3227 = tint_symbol_80(x_3229, x_3230, x_3215.x, x_3214.yz, x_3215.yz, tint_symbol_23_13.x, tint_symbol_28_16.x, tint_symbol_23_13.yz, tint_symbol_28_16.yz);
        tint_symbol_76_5 = x_3227;
        let x_3240 = tint_symbol_60_6.x;
        let x_3241 = tint_symbol_76_5;
        let x_3238 = tint_symbol_80(x_3240, x_3241, x_3214.y, x_3214.xz, x_3215.xz, tint_symbol_23_13.y, tint_symbol_28_16.y, tint_symbol_23_13.xz, tint_symbol_28_16.xz);
        tint_symbol_76_5 = x_3238;
        let x_3251 = tint_symbol_60_6.x;
        let x_3252 = tint_symbol_76_5;
        let x_3249 = tint_symbol_80(x_3251, x_3252, x_3215.y, x_3214.xz, x_3215.xz, tint_symbol_23_13.y, tint_symbol_28_16.y, tint_symbol_23_13.xz, tint_symbol_28_16.xz);
        tint_symbol_76_5 = x_3249;
        let x_3262 = tint_symbol_60_6.x;
        let x_3263 = tint_symbol_76_5;
        let x_3260 = tint_symbol_80(x_3262, x_3263, x_3214.z, x_3214.xy, x_3215.xy, tint_symbol_23_13.z, tint_symbol_28_16.z, tint_symbol_23_13.xy, tint_symbol_28_16.xy);
        tint_symbol_76_5 = x_3260;
        let x_3273 = tint_symbol_60_6.x;
        let x_3274 = tint_symbol_76_5;
        let x_3271 = tint_symbol_80(x_3273, x_3274, x_3215.z, x_3214.xy, x_3215.xy, tint_symbol_23_13.z, tint_symbol_28_16.z, tint_symbol_23_13.xy, tint_symbol_28_16.xy);
        tint_symbol_76_5 = x_3271;
        let x_3291 = (clamp(((tint_symbol_77.inner[x_3192] / tint_symbol_66.inner.tint_symbol_82) * 0.05000000074505805969f), 0.0f, 0.20000000298023223877f) * tint_symbol_170);
        tint_symbol_69_3 = (tint_symbol_69_3 + (vec4f(0.89999997615814208984f, 0.89999997615814208984f, 0.94999998807907104492f, 1.0f) * x_3291));
        tint_symbol_170 = (tint_symbol_170 - x_3291);
      } else {
        tint_symbol_76_5 = tint_symbol_60_6.y;
      }
      tint_symbol_64_5 = (tint_symbol_76_5 + 0.00009999999747378752f);
    }
    if ((tint_symbol_170 > 0.98000001907348632812f)) {
      tint_symbol_62_7 = x_1625;
    } else {
      tint_symbol_69_3.w = ((1.0f - tint_symbol_170) * 1.5f);
      tint_symbol_62_7 = mix(x_1625, tint_symbol_69_3, vec4f(tint_symbol_69_3.w));
    }
    let x_3326 = (((tint_symbol_23_13 + (tint_symbol_28_16 * tint_symbol_60_6.y)) + x_3131.xyz) / (x_3131.xyz * 2.0f));
    let x_3328 = (x_3326.x < 0.00999999977648258209f);
    x_3334 = x_3328;
    if (x_3328) {
    } else {
      x_3333 = (x_3326.x > (1.0f - 0.00999999977648258209f));
      x_3334 = x_3333;
    }
    x_3339 = x_3334;
    if (x_3334) {
    } else {
      x_3338 = (x_3326.y < 0.00999999977648258209f);
      x_3339 = x_3338;
    }
    x_3345 = x_3339;
    if (x_3339) {
    } else {
      x_3344 = (x_3326.y > (1.0f - 0.00999999977648258209f));
      x_3345 = x_3344;
    }
    x_3350 = x_3345;
    if (x_3345) {
    } else {
      x_3349 = (x_3326.z < 0.00999999977648258209f);
      x_3350 = x_3349;
    }
    x_3356 = x_3350;
    if (x_3350) {
    } else {
      x_3355 = (x_3326.z > (1.0f - 0.00999999977648258209f));
      x_3356 = x_3355;
    }
    if (x_3356) {
      tint_symbol_62_7 = mix(tint_symbol_62_7, x_1917, vec4f(0.30000001192092895508f));
    }
  } else {
    tint_symbol_62_7 = x_1625;
  }
  let x_3365 = tint_symbol_62_7;
  textureStore(tint_symbol_89, tint_symbol_59_7, x_3365);
  return;
}

const x_3624 = vec4f(0.69999998807907104492f, 0.80000001192092895508f, 1.0f, 1.0f);

fn tint_symbol_155(tint_symbol_59_8 : vec2i, tint_symbol_23_14 : vec3f, tint_symbol_28_17 : vec3f) {
  var tint_symbol_60_7 = vec2f();
  var tint_symbol_62_8 = vec4f();
  var tint_symbol_64_6 = 0.0f;
  var x_3411 = vec3f();
  var x_3428 = vec4f();
  var tint_symbol_168 = false;
  var tint_symbol_74_6 = vec3u();
  var tint_symbol_76_6 = 0.0f;
  var x_3381 : bool;
  var x_3382 : bool;
  let x_3371 = tint_symbol_61(tint_symbol_23_14, tint_symbol_28_17);
  tint_symbol_60_7 = x_3371;
  tint_symbol_62_8 = x_2304;
  let x_3376 = (tint_symbol_60_7.y < 0.0f);
  x_3382 = x_3376;
  if (x_3376) {
    x_3381 = (tint_symbol_60_7.x > 0.0f);
    x_3382 = x_3381;
  }
  if (x_3382) {
    tint_symbol_60_7.y = tint_symbol_60_7.x;
    tint_symbol_60_7.x = 0.0f;
  }
  if ((tint_symbol_60_7.x >= 0.0f)) {
    tint_symbol_64_6 = (tint_symbol_60_7.x + 0.00009999999747378752f);
    let x_3410 = (tint_symbol_66.inner.tint_symbol_67.xyz / vec3f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
    let x_3427 = (((tint_symbol_66.inner.tint_symbol_68 * tint_symbol_66.inner.tint_symbol_67) * 0.5f) / vec4f(max(max(tint_symbol_66.inner.tint_symbol_68.x, tint_symbol_66.inner.tint_symbol_68.y), tint_symbol_66.inner.tint_symbol_68.z)));
    tint_symbol_168 = false;
    loop {
      var x_3450 : bool;
      var x_3452 : bool;
      let x_3447 = (tint_symbol_64_6 < tint_symbol_60_7.y);
      x_3452 = x_3447;
      if (x_3447) {
        x_3450 = !(tint_symbol_168);
        x_3452 = x_3450;
      }
      if (!(x_3452)) {
        break;
      }
      var x_3495 : u32;
      let x_3462 = (((tint_symbol_23_14 + (tint_symbol_28_17 * tint_symbol_64_6)) + x_3427.xyz) / (x_3427.xyz * 2.0f));
      let x_3465 = tint_symbol_66.inner.tint_symbol_68;
      let x_3463 = tint_ftou((x_3462 * x_3465.xyz));
      tint_symbol_74_6 = x_3463;
      let x_3470 = tint_symbol_74_6;
      let x_3473 = tint_symbol_66.inner.tint_symbol_68;
      let x_3471 = tint_ftou(x_3473.xyz);
      tint_symbol_74_6 = min(x_3470, (x_3471 - x_1724));
      let x_3477 = tint_symbol_74_6.x;
      let x_3479 = tint_symbol_74_6.y;
      let x_3482 = tint_symbol_66.inner.tint_symbol_68.x;
      let x_3480 = tint_ftou_1(x_3482);
      let x_3486 = tint_symbol_74_6.z;
      let x_3489 = tint_symbol_66.inner.tint_symbol_68.x;
      let x_3487 = tint_ftou_1(x_3489);
      let x_3493 = tint_symbol_66.inner.tint_symbol_68.y;
      let x_3491 = tint_ftou_1(x_3493);
      x_3495 = ((x_3477 + (x_3479 * x_3480)) + ((x_3486 * x_3487) * x_3491));
      if ((x_3495 < arrayLength(&(tint_symbol_77.inner)))) {
        var x_3501 : f32;
        x_3501 = tint_symbol_77.inner[x_3495];
        if ((x_3501 > 0.0f)) {
          if ((x_3501 < 25.0f)) {
            tint_symbol_62_8 = vec4f(0.69999998807907104492f, 0.80000001192092895508f, 1.0f, 0.0f);
          } else {
            if ((x_3501 < 75.0f)) {
              tint_symbol_62_8 = vec4f(0.20000000298023223877f, 0.60000002384185791016f, 0.10000000149011611938f, 1.0f);
              tint_symbol_168 = true;
            } else {
              if ((x_3501 < 125.0f)) {
                tint_symbol_62_8 = vec4f(0.60000002384185791016f, 0.40000000596046447754f, 0.20000000298023223877f, 1.0f);
                tint_symbol_168 = true;
              } else {
                if ((x_3501 < 175.0f)) {
                  tint_symbol_62_8 = vec4f(0.5f, 0.5f, 0.5f, 1.0f);
                  tint_symbol_168 = true;
                } else {
                  if ((x_3501 < 225.0f)) {
                    tint_symbol_62_8 = vec4f(0.0f, 0.30000001192092895508f, 0.69999998807907104492f, 0.80000001192092895508f);
                  } else {
                    tint_symbol_62_8 = vec4f(0.89999997615814208984f, 0.89999997615814208984f, 1.0f, 1.0f);
                    tint_symbol_168 = true;
                  }
                }
              }
            }
          }
        }
      }
      if (!(tint_symbol_168)) {
        let x_3547 = (((floor((x_3462 * tint_symbol_66.inner.tint_symbol_68.xyz)) / tint_symbol_66.inner.tint_symbol_68.xyz) * (x_3427.xyz * 2.0f)) - x_3427.xyz);
        let x_3548 = (x_3547 + x_3410);
        tint_symbol_76_6 = tint_symbol_60_7.y;
        let x_3554 = tint_symbol_60_7.x;
        let x_3555 = tint_symbol_76_6;
        let x_3552 = tint_symbol_80(x_3554, x_3555, x_3547.x, x_3547.yz, x_3548.yz, tint_symbol_23_14.x, tint_symbol_28_17.x, tint_symbol_23_14.yz, tint_symbol_28_17.yz);
        tint_symbol_76_6 = x_3552;
        let x_3565 = tint_symbol_60_7.x;
        let x_3566 = tint_symbol_76_6;
        let x_3563 = tint_symbol_80(x_3565, x_3566, x_3548.x, x_3547.yz, x_3548.yz, tint_symbol_23_14.x, tint_symbol_28_17.x, tint_symbol_23_14.yz, tint_symbol_28_17.yz);
        tint_symbol_76_6 = x_3563;
        let x_3576 = tint_symbol_60_7.x;
        let x_3577 = tint_symbol_76_6;
        let x_3574 = tint_symbol_80(x_3576, x_3577, x_3547.y, x_3547.xz, x_3548.xz, tint_symbol_23_14.y, tint_symbol_28_17.y, tint_symbol_23_14.xz, tint_symbol_28_17.xz);
        tint_symbol_76_6 = x_3574;
        let x_3587 = tint_symbol_60_7.x;
        let x_3588 = tint_symbol_76_6;
        let x_3585 = tint_symbol_80(x_3587, x_3588, x_3548.y, x_3547.xz, x_3548.xz, tint_symbol_23_14.y, tint_symbol_28_17.y, tint_symbol_23_14.xz, tint_symbol_28_17.xz);
        tint_symbol_76_6 = x_3585;
        let x_3598 = tint_symbol_60_7.x;
        let x_3599 = tint_symbol_76_6;
        let x_3596 = tint_symbol_80(x_3598, x_3599, x_3547.z, x_3547.xy, x_3548.xy, tint_symbol_23_14.z, tint_symbol_28_17.z, tint_symbol_23_14.xy, tint_symbol_28_17.xy);
        tint_symbol_76_6 = x_3596;
        let x_3609 = tint_symbol_60_7.x;
        let x_3610 = tint_symbol_76_6;
        let x_3607 = tint_symbol_80(x_3609, x_3610, x_3548.z, x_3547.xy, x_3548.xy, tint_symbol_23_14.z, tint_symbol_28_17.z, tint_symbol_23_14.xy, tint_symbol_28_17.xy);
        tint_symbol_76_6 = x_3607;
        tint_symbol_64_6 = (tint_symbol_76_6 + 0.00009999999747378752f);
      }
    }
    if (!(tint_symbol_168)) {
      tint_symbol_62_8 = x_3624;
    }
  } else {
    tint_symbol_62_8 = x_3624;
  }
  let x_3627 = tint_symbol_62_8;
  textureStore(tint_symbol_89, tint_symbol_59_8, x_3627);
  return;
}

fn tint_symbol_153(tint_symbol_59_9 : vec2i, tint_symbol_23_15 : vec3f, tint_symbol_28_18 : vec3f) {
  if ((tint_symbol_112.inner == 0u)) {
    tint_symbol_133(tint_symbol_59_9, tint_symbol_23_15, tint_symbol_28_18);
  } else {
    if ((tint_symbol_112.inner == 1u)) {
      tint_symbol_136(tint_symbol_59_9, tint_symbol_23_15, tint_symbol_28_18);
    } else {
      if ((tint_symbol_112.inner == 2u)) {
        tint_symbol_148(tint_symbol_59_9, tint_symbol_23_15, tint_symbol_28_18);
      } else {
        if ((tint_symbol_112.inner == 3u)) {
          tint_symbol_140(tint_symbol_59_9, tint_symbol_23_15, tint_symbol_28_18);
        } else {
          if ((tint_symbol_112.inner == 4u)) {
            tint_symbol_154(tint_symbol_59_9, tint_symbol_23_15, tint_symbol_28_18);
          } else {
            if ((tint_symbol_112.inner == 5u)) {
              tint_symbol_155(tint_symbol_59_9, tint_symbol_23_15, tint_symbol_28_18);
            } else {
              if ((tint_symbol_112.inner == 6u)) {
                tint_symbol_90(tint_symbol_59_9, tint_symbol_23_15, tint_symbol_28_18);
              } else {
                if ((tint_symbol_112.inner == 7u)) {
                  tint_symbol_58(tint_symbol_59_9, tint_symbol_23_15, tint_symbol_28_18);
                } else {
                  tint_symbol_140(tint_symbol_59_9, tint_symbol_23_15, tint_symbol_28_18);
                }
              }
            }
          }
        }
      }
    }
  }
  return;
}

const x_3712 = vec2f(2.0f);

fn tint_symbol_156_inner(tint_symbol_157 : vec3u) {
  var tint_symbol_37_1 = vec3f();
  var tint_symbol_160 = vec3f();
  var x_3708 : bool;
  var x_3709 : bool;
  let x_3695 = bitcast<vec2i>(tint_symbol_157.xy);
  let x_3698 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_89)));
  let x_3703 = (x_3695.x < x_3698.x);
  x_3709 = x_3703;
  if (x_3703) {
    x_3708 = (x_3695.y < x_3698.y);
    x_3709 = x_3708;
  }
  if (x_3709) {
    let x_3717 = (x_3712 / tint_symbol_111.inner.tint_symbol_106.xy);
    tint_symbol_37_1 = vec3f((((f32(x_3695.x) + 0.5f) * x_3717.x) - 1.0f), (((f32(x_3695.y) + 0.5f) * x_3717.y) - 1.0f), 0.0f);
    tint_symbol_160 = vec3f(0.0f, 0.0f, 1.0f);
    let x_3735 = tint_symbol_37_1;
    let x_3734 = tint_symbol_115(x_3735);
    tint_symbol_37_1 = x_3734;
    let x_3737 = tint_symbol_160;
    let x_3736 = tint_symbol_113(x_3737);
    tint_symbol_160 = x_3736;
    let x_3739 = tint_symbol_37_1;
    let x_3740 = tint_symbol_160;
    tint_symbol_153(x_3695, x_3739, x_3740);
  }
  return;
}

fn tint_symbol_156_1() {
  let x_3745 = tint_symbol_157_1;
  tint_symbol_156_inner(x_3745);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_157_1_param : vec3u) {
  tint_symbol_157_1 = tint_symbol_157_1_param;
  tint_symbol_156_1();
}

fn tint_symbol_161_inner(tint_symbol_157_3 : vec3u) {
  var tint_symbol_37_2 = vec3f();
  var tint_symbol_160_1 = vec3f();
  var x_3761 : bool;
  var x_3762 : bool;
  let x_3749 = bitcast<vec2i>(tint_symbol_157_3.xy);
  let x_3751 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_89)));
  let x_3756 = (x_3749.x < x_3751.x);
  x_3762 = x_3756;
  if (x_3756) {
    x_3761 = (x_3749.y < x_3751.y);
    x_3762 = x_3761;
  }
  if (x_3762) {
    let x_3768 = (x_3712 / tint_symbol_111.inner.tint_symbol_106.xy);
    tint_symbol_37_2 = vec3f();
    tint_symbol_160_1 = vec3f((((f32(x_3749.x) + 0.5f) * x_3768.x) - 1.0f), (((f32(x_3749.y) + 0.5f) * x_3768.y) - 1.0f), tint_symbol_111.inner.tint_symbol_105.x);
    tint_symbol_160_1 = normalize(tint_symbol_160_1);
    let x_3789 = tint_symbol_37_2;
    let x_3788 = tint_symbol_115(x_3789);
    tint_symbol_37_2 = x_3788;
    let x_3791 = tint_symbol_160_1;
    let x_3790 = tint_symbol_113(x_3791);
    tint_symbol_160_1 = x_3790;
    let x_3793 = tint_symbol_37_2;
    let x_3794 = tint_symbol_160_1;
    tint_symbol_153(x_3749, x_3793, x_3794);
  }
  return;
}

fn tint_symbol_161_1() {
  let x_3798 = tint_symbol_157_2;
  tint_symbol_161_inner(x_3798);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_157_2_param : vec3u) {
  tint_symbol_157_2 = tint_symbol_157_2_param;
  tint_symbol_161_1();
}
