
// pushing activation record 
/* DEF: iResolution *//* DEF: iSampleRate *//* DEF: iGlobalTime *//* DEF: iTime *//* DEF: iTimeDelta *//* DEF: iFrame *//* DEF: iChannelTime *//* DEF: iMouse *//* DEF: iDate *//* DEF: iChannelResolution *//* DEF: vec2 *//* DEF: vec3 *//* DEF: vec4 *//* DEF: mat2 *//* DEF: mat3 *//* DEF: mat4 *//* DEF: ivec2 *//* DEF: ivec3 *//* DEF: ivec4 *//* DEF: bvec2 *//* DEF: bvec3 *//* DEF: bvec4 *//* DEF: + *//* DEF: - *//* DEF: * *//* DEF: / *//* DEF: < *//* DEF: > *//* DEF: <= *//* DEF: >= *//* DEF: == *//* DEF: ++ *//* DEF: -- *//* DEF: && *//* DEF: || *//* DEF: ^^ *//* DEF: ! *//* DEF: ? *//* DEF: matrixCompMult *//* DEF: all *//* DEF: any *//* DEF: equal *//* DEF: greaterThan *//* DEF: greaterThanEqual *//* DEF: lessThan *//* DEF: lessThanEqual *//* DEF: not *//* DEF: notEqual *//* DEF: ftransform *//* DEF: cross *//* DEF: distance *//* DEF: dot *//* DEF: faceforward *//* DEF: length *//* DEF: normalize *//* DEF: reflect *//* DEF: refract *//* DEF: sin *//* DEF: cos *//* DEF: tan *//* DEF: asin *//* DEF: acos *//* DEF: atan *//* DEF: radians *//* DEF: degrees *//* DEF: abs *//* DEF: ceil *//* DEF: clamp *//* DEF: floor *//* DEF: fract *//* DEF: max *//* DEF: min *//* DEF: mix *//* DEF: mod *//* DEF: sign *//* DEF: smoothstep *//* DEF: step *//* DEF: pow *//* DEF: exp *//* DEF: log *//* DEF: exp2 *//* DEF: log2 *//* DEF: sqrt *//* DEF: inversesqrt *//* DEF: dFdx *//* DEF: dFdy *//* DEF: fwidth *//* DEF: texture1D *//* DEF: texture1DProj *//* DEF: texture2D *//* DEF: texture2DProj *//* DEF: texture3D *//* DEF: texture3DProj *//* DEF: textureCube *//* DEF: shadow1D *//* DEF: shadow2D *//* DEF: shadow1DProj *//* DEF: shadow2DProj *//* DEF: texture1DLod *//* DEF: texture1DProjLod *//* DEF: texture2DLod *//* DEF: texture2DProjLod *//* DEF: texture3DProjLod *//* DEF: textureCubeLod *//* DEF: shadow1DLod *//* DEF: shadow2DLod *//* DEF: shadow1DProjLod *//* DEF: shadow2DProjLod *//* DEF: noise1 *//* DEF: noise2 *//* DEF: noise3 *//* DEF: noise4 *//* DEF: mainImage */
// pushing activation record 0:mainImage
void mainImage(out vec4 /* DEF: fragColor */fragColor, in vec2 /* DEF: fragCoord */fragCoord){

    // pushing activation record 0:mainImage1:
    vec2 /* DEF: p */p = -1.0 + 2.0 * /* REF: fragCoord*/fragCoord.xy / /* REF: iResolution*/iResolution.xy;
    /* REF: p*/p.x *= /* REF: iResolution*/iResolution.x / /* REF: iResolution*/iResolution.y;
    float /* DEF: tz */tz = 0.5 - 0.5 * /* REF: cos*/cos(0.225 * /* REF: iGlobalTime*/iGlobalTime);
    float /* DEF: zoo */zoo = /* REF: pow*/pow(0.5, 13.0 * /* REF: tz*/tz);
    vec2 /* DEF: c */c = /* REF: vec2*/vec2(-0.05, .6805) + /* REF: p*/p * /* REF: zoo*/zoo;
    float /* DEF: di */di = 1.0;
    vec2 /* DEF: z */z = /* REF: vec2*/vec2(0.0);
    float /* DEF: m2 */m2 = 0.0;
    vec2 /* DEF: dz */dz = /* REF: vec2*/vec2(0.0);
    
    // pushing activation record 0:mainImage1:2:for
    for (int /* DEF: i */i = 0; /* REF: i*/i < 300; /* REF: i*/i++) {
    
        // pushing activation record 0:mainImage1:2:for3:
        if (/* REF: m2*/m2 > 1024.0) {
        
            // pushing activation record 0:mainImage1:2:for3:4:
            /* REF: di*/di = 0.0;
            break;
            }
        // popping activation record 0:mainImage1:2:for3:4:
        // local variables: 
        // references:
        // di at line 37, column 26
        /* REF: dz*/dz = 2.0 * /* REF: vec2*/vec2(/* REF: z*/z.x * /* REF: dz*/dz.x - /* REF: z*/z.y * /* REF: dz*/dz.y, /* REF: z*/z.x * /* REF: dz*/dz.y + /* REF: z*/z.y * /* REF: dz*/dz.x) + /* REF: vec2*/vec2(1.0, 0.0);
        /* REF: z*/z = /* REF: vec2*/vec2(/* REF: z*/z.x * /* REF: z*/z.x - /* REF: z*/z.y * /* REF: z*/z.y, 2.0 * /* REF: z*/z.x * /* REF: z*/z.y) + /* REF: c*/c;
        /* REF: m2*/m2 = /* REF: dot*/dot(/* REF: z*/z, /* REF: z*/z);
        }
    // popping activation record 0:mainImage1:2:for3:
    // local variables: 
    // references:
    // m2 at line 37, column 12
    // dz at line 40, column 8
    // vec2 at line 40, column 17
    // z at line 40, column 22
    // dz at line 40, column 26
    // z at line 40, column 31
    // dz at line 40, column 35
    // z at line 40, column 41
    // dz at line 40, column 45
    // z at line 40, column 52
    // dz at line 40, column 56
    // vec2 at line 40, column 64
    // z at line 43, column 8
    // vec2 at line 43, column 12
    // z at line 43, column 18
    // z at line 43, column 22
    // z at line 43, column 28
    // z at line 43, column 32
    // z at line 43, column 41
    // z at line 43, column 45
    // c at line 43, column 53
    // m2 at line 45, column 8
    // dot at line 45, column 13
    // z at line 45, column 17
    // z at line 45, column 19
    // popping activation record 0:mainImage1:2:for
    // local variables: 
    // variable i, unique name 0:mainImage1:2:for:i, index 123, declared at line 35, column 13
    // references:
    // i at line 35, column 18
    // i at line 35, column 25
    float /* DEF: d */d = 0.5 * /* REF: sqrt*/sqrt(/* REF: dot*/dot(/* REF: z*/z, /* REF: z*/z) / /* REF: dot*/dot(/* REF: dz*/dz, /* REF: dz*/dz)) * /* REF: log*/log(/* REF: dot*/dot(/* REF: z*/z, /* REF: z*/z));
    if (/* REF: di*/di > 0.5) /* REF: d*/d = 0.0;
    /* REF: d*/d = /* REF: clamp*/clamp(/* REF: pow*/pow(4.0 * /* REF: d*/d / /* REF: zoo*/zoo, 0.2), 0.0, 1.0);
    vec3 /* DEF: col */col = /* REF: vec3*/vec3(/* REF: d*/d);
    /* REF: fragColor*/fragColor = /* REF: vec4*/vec4(/* REF: col*/col, 1.0);
    }
// popping activation record 0:mainImage1:
// local variables: 
// variable p, unique name 0:mainImage1::p, index 115, declared at line 22, column 9
// variable tz, unique name 0:mainImage1::tz, index 116, declared at line 26, column 7
// variable zoo, unique name 0:mainImage1::zoo, index 117, declared at line 27, column 10
// variable c, unique name 0:mainImage1::c, index 118, declared at line 28, column 6
// variable di, unique name 0:mainImage1::di, index 119, declared at line 31, column 10
// variable z, unique name 0:mainImage1::z, index 120, declared at line 32, column 9
// variable m2, unique name 0:mainImage1::m2, index 121, declared at line 33, column 10
// variable dz, unique name 0:mainImage1::dz, index 122, declared at line 34, column 9
// variable d, unique name 0:mainImage1::d, index 124, declared at line 50, column 7
// variable col, unique name 0:mainImage1::col, index 125, declared at line 56, column 9
// references:
// fragCoord at line 22, column 26
// iResolution at line 22, column 41
// p at line 23, column 4
// iResolution at line 23, column 11
// iResolution at line 23, column 25
// cos at line 26, column 22
// iGlobalTime at line 26, column 32
// pow at line 27, column 16
// tz at line 27, column 31
// vec2 at line 28, column 10
// p at line 28, column 30
// zoo at line 28, column 32
// vec2 at line 32, column 14
// vec2 at line 34, column 14
// sqrt at line 50, column 15
// dot at line 50, column 20
// z at line 50, column 24
// z at line 50, column 26
// dot at line 50, column 29
// dz at line 50, column 33
// dz at line 50, column 36
// log at line 50, column 41
// dot at line 50, column 45
// z at line 50, column 49
// z at line 50, column 51
// di at line 51, column 8
// d at line 51, column 17
// d at line 54, column 1
// clamp at line 54, column 5
// pow at line 54, column 12
// d at line 54, column 20
// zoo at line 54, column 22
// vec3 at line 56, column 15
// d at line 56, column 21
// fragColor at line 58, column 4
// vec4 at line 58, column 16
// col at line 58, column 22
// popping activation record 0:mainImage
// local variables: 
// variable fragColor, unique name 0:mainImage:fragColor, index 113, declared at line 20, column 25
// variable fragCoord, unique name 0:mainImage:fragCoord, index 114, declared at line 20, column 44
// references:
// undefined variables 
