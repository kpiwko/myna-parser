// pushing activation record 0
const float tau = 6.28318530717958647692;
#define GAMMA  (2.2)

// pushing activation record 0:ToLinear1
vec3 ToLinear(in vec3 col)
{
// pushing activation record 0:ToLinear1:2
    return pow(col, vec3(GAMMA));

}
// popping activation record 0:ToLinear1:2
// local variables: 
// references:
// pow at line 11, column 8
// col at line 11, column 13
// vec3 at line 11, column 18
// GAMMA at line 11, column 23
// popping activation record 0:ToLinear1
// local variables: 
// variable col, unique name 0:ToLinear1:col, index 180, declared at line 8, column 23
// references:
// pushing activation record 0:ToGamma3
vec3 ToGamma(in vec3 col)
{
// pushing activation record 0:ToGamma3:4
    return pow(col, vec3(1.0 / GAMMA));

}
// popping activation record 0:ToGamma3:4
// local variables: 
// references:
// pow at line 17, column 8
// col at line 17, column 13
// vec3 at line 17, column 18
// GAMMA at line 17, column 27
// popping activation record 0:ToGamma3
// local variables: 
// variable col, unique name 0:ToGamma3:col, index 182, declared at line 14, column 22
// references:
vec3 localRay;
// pushing activation record 0:CamPolar5
void CamPolar(out vec3 pos, out vec3 ray, in vec3 origin, in vec2 rotation, in float distance, in float zoom, in vec2 fragCoord)
{
// pushing activation record 0:CamPolar5:6
    vec2 c = vec2(cos(rotation.x), cos(rotation.y));
    vec4 s;
    s.xy = vec2(sin(rotation.x), sin(rotation.y));
    s.zw = -s.xy;
    ray.xy = fragCoord.xy - iResolution.xy * .5;
    ray.z = iResolution.y * zoom;
    ray = normalize(ray);
    localRay = ray;
    ray.yz = ray.yz * c.xx + ray.zy * s.zx;
    ray.xz = ray.xz * c.yy + ray.zx * s.yw;
    pos = origin - distance * vec3(c.x * s.y, s.z, c.x * c.y);

}
// popping activation record 0:CamPolar5:6
// local variables: 
// variable c, unique name 0:CamPolar5:6:c, index 192, declared at line 30, column 6
// variable s, unique name 0:CamPolar5:6:s, index 193, declared at line 31, column 6
// references:
// vec2 at line 30, column 10
// cos at line 30, column 15
// rotation at line 30, column 19
// cos at line 30, column 31
// rotation at line 30, column 35
// s at line 32, column 1
// vec2 at line 32, column 8
// sin at line 32, column 13
// rotation at line 32, column 17
// sin at line 32, column 29
// rotation at line 32, column 33
// s at line 33, column 1
// s at line 33, column 9
// ray at line 36, column 1
// fragCoord at line 36, column 10
// iResolution at line 36, column 25
// ray at line 37, column 1
// iResolution at line 37, column 9
// zoom at line 37, column 23
// ray at line 38, column 1
// normalize at line 38, column 7
// ray at line 38, column 17
// localRay at line 39, column 1
// ray at line 39, column 12
// ray at line 42, column 1
// ray at line 42, column 10
// c at line 42, column 17
// ray at line 42, column 24
// s at line 42, column 31
// ray at line 43, column 1
// ray at line 43, column 10
// c at line 43, column 17
// ray at line 43, column 24
// s at line 43, column 31
// pos at line 46, column 1
// origin at line 46, column 7
// distance at line 46, column 16
// vec3 at line 46, column 25
// c at line 46, column 30
// s at line 46, column 34
// s at line 46, column 38
// c at line 46, column 42
// c at line 46, column 46
// popping activation record 0:CamPolar5
// local variables: 
// variable pos, unique name 0:CamPolar5:pos, index 185, declared at line 27, column 24
// variable ray, unique name 0:CamPolar5:ray, index 186, declared at line 27, column 38
// variable origin, unique name 0:CamPolar5:origin, index 187, declared at line 27, column 51
// variable rotation, unique name 0:CamPolar5:rotation, index 188, declared at line 27, column 67
// variable distance, unique name 0:CamPolar5:distance, index 189, declared at line 27, column 86
// variable zoom, unique name 0:CamPolar5:zoom, index 190, declared at line 27, column 105
// variable fragCoord, unique name 0:CamPolar5:fragCoord, index 191, declared at line 27, column 119
// references:
// pushing activation record 0:Noise7
vec2 Noise(in vec3 x)
{
// pushing activation record 0:Noise7:8
    vec3 p = floor(x);
    vec3 f = fract(x);
    f = f * f * (3.0 - 2.0 * f);
    vec2 uv = (p.xy + vec2(37.0, 17.0) * p.z);
    vec4 rg = textureLod(iChannel0, (uv + f.xy + 0.5) / 256.0, 0.0);
    return mix(rg.yw, rg.xz, f.z);

}
// popping activation record 0:Noise7:8
// local variables: 
// variable p, unique name 0:Noise7:8:p, index 196, declared at line 54, column 9
// variable f, unique name 0:Noise7:8:f, index 197, declared at line 55, column 9
// variable uv, unique name 0:Noise7:8:uv, index 198, declared at line 59, column 6
// variable rg, unique name 0:Noise7:8:rg, index 199, declared at line 61, column 6
// references:
// floor at line 54, column 13
// x at line 54, column 19
// fract at line 55, column 13
// x at line 55, column 19
// f at line 56, column 1
// f at line 56, column 5
// f at line 56, column 7
// f at line 56, column 18
// p at line 59, column 12
// vec2 at line 59, column 17
// p at line 59, column 33
// textureLod at line 61, column 11
// iChannel0 at line 61, column 23
// uv at line 61, column 35
// f at line 61, column 38
// mix at line 63, column 8
// rg at line 63, column 13
// rg at line 63, column 20
// f at line 63, column 27
// popping activation record 0:Noise7
// local variables: 
// variable x, unique name 0:Noise7:x, index 195, declared at line 52, column 20
// references:
// pushing activation record 0:NoisePrecise9
vec2 NoisePrecise(in vec3 x)
{
// pushing activation record 0:NoisePrecise9:10
    vec3 p = floor(x);
    vec3 f = fract(x);
    f = f * f * (3.0 - 2.0 * f);
    vec2 uv = (p.xy + vec2(37.0, 17.0) * p.z);
    vec4 rg = mix(mix(textureLod(iChannel0, (uv + 0.5) / 256.0, 0.0), textureLod(iChannel0, (uv + vec2(1, 0) + 0.5) / 256.0, 0.0), f.x), mix(textureLod(iChannel0, (uv + vec2(0, 1) + 0.5) / 256.0, 0.0), textureLod(iChannel0, (uv + 1.5) / 256.0, 0.0), f.x), f.y);
    return mix(rg.yw, rg.xz, f.z);

}
// popping activation record 0:NoisePrecise9:10
// local variables: 
// variable p, unique name 0:NoisePrecise9:10:p, index 202, declared at line 68, column 9
// variable f, unique name 0:NoisePrecise9:10:f, index 203, declared at line 69, column 9
// variable uv, unique name 0:NoisePrecise9:10:uv, index 204, declared at line 73, column 6
// variable rg, unique name 0:NoisePrecise9:10:rg, index 205, declared at line 75, column 6
// references:
// floor at line 68, column 13
// x at line 68, column 19
// fract at line 69, column 13
// x at line 69, column 19
// f at line 70, column 1
// f at line 70, column 5
// f at line 70, column 7
// f at line 70, column 18
// p at line 73, column 12
// vec2 at line 73, column 17
// p at line 73, column 33
// mix at line 75, column 11
// mix at line 75, column 16
// textureLod at line 76, column 4
// iChannel0 at line 76, column 16
// uv at line 76, column 28
// textureLod at line 77, column 4
// iChannel0 at line 77, column 16
// uv at line 77, column 28
// vec2 at line 77, column 31
// f at line 78, column 4
// mix at line 79, column 6
// textureLod at line 80, column 4
// iChannel0 at line 80, column 16
// uv at line 80, column 28
// vec2 at line 80, column 31
// textureLod at line 81, column 4
// iChannel0 at line 81, column 16
// uv at line 81, column 28
// f at line 82, column 4
// f at line 83, column 4
// mix at line 86, column 8
// rg at line 86, column 13
// rg at line 86, column 20
// f at line 86, column 27
// popping activation record 0:NoisePrecise9
// local variables: 
// variable x, unique name 0:NoisePrecise9:x, index 201, declared at line 66, column 27
// references:
// pushing activation record 0:Noise11
vec4 Noise(in vec2 x)
{
// pushing activation record 0:Noise11:12
    vec2 p = floor(x.xy);
    vec2 f = fract(x.xy);
    f = f * f * (3.0 - 2.0 * f);
    vec2 uv = p.xy + f.xy;
    return textureLod(iChannel0, (uv + 0.5) / 256.0, 0.0);

}
// popping activation record 0:Noise11:12
// local variables: 
// variable p, unique name 0:Noise11:12:p, index 207, declared at line 91, column 9
// variable f, unique name 0:Noise11:12:f, index 208, declared at line 92, column 9
// variable uv, unique name 0:Noise11:12:uv, index 209, declared at line 96, column 6
// references:
// floor at line 91, column 13
// x at line 91, column 19
// fract at line 92, column 13
// x at line 92, column 19
// f at line 93, column 1
// f at line 93, column 5
// f at line 93, column 7
// f at line 93, column 18
// p at line 96, column 11
// f at line 96, column 18
// textureLod at line 97, column 8
// iChannel0 at line 97, column 20
// uv at line 97, column 32
// popping activation record 0:Noise11
// local variables: 
// variable x, unique name 0:Noise11:x, index 206, declared at line 89, column 20
// references:
// pushing activation record 0:Noise13
vec4 Noise(in ivec2 x)
{
// pushing activation record 0:Noise13:14
    return textureLod(iChannel0, (vec2(x) + 0.5) / 256.0, 0.0);

}
// popping activation record 0:Noise13:14
// local variables: 
// references:
// textureLod at line 102, column 8
// iChannel0 at line 102, column 20
// vec2 at line 102, column 32
// x at line 102, column 37
// popping activation record 0:Noise13
// local variables: 
// variable x, unique name 0:Noise13:x, index 210, declared at line 100, column 21
// references:
// pushing activation record 0:Noise15
vec2 Noise(in ivec3 x)
{
// pushing activation record 0:Noise15:16
    vec2 uv = vec2(x.xy) + vec2(37.0, 17.0) * float(x.z);
    return textureLod(iChannel0, (uv + 0.5) / 256.0, 0.0).xz;

}
// popping activation record 0:Noise15:16
// local variables: 
// variable uv, unique name 0:Noise15:16:uv, index 212, declared at line 107, column 6
// references:
// vec2 at line 107, column 11
// x at line 107, column 16
// vec2 at line 107, column 22
// float at line 107, column 38
// x at line 107, column 44
// textureLod at line 108, column 8
// iChannel0 at line 108, column 20
// uv at line 108, column 32
// popping activation record 0:Noise15
// local variables: 
// variable x, unique name 0:Noise15:x, index 211, declared at line 105, column 21
// references:
// pushing activation record 0:Waves17
float Waves(vec3 pos)
{
// pushing activation record 0:Waves17:18
    pos *= .2 * vec3(1, 1, 1);
    const int octaves = 5;
    float f = 0.0;
    pos += iGlobalTime * vec3(0, .1, .1);
    // pushing activation record 0:Waves17:18:for19
    for (int i = 0; i < octaves; i++) {
    // pushing activation record 0:Waves17:18:for19:20
        pos = (pos.yzx + pos.zyx * vec3(1, -1, 1)) / sqrt(2.0);
        f = f * 2.0 + abs(Noise(pos).x - .5) * 2.0;
        pos *= 2.0;

    }
    // popping activation record 0:Waves17:18:for19:20
    // local variables: 
    // references:
    // pos at line 124, column 2
    // pos at line 124, column 9
    // pos at line 124, column 19
    // vec3 at line 124, column 27
    // sqrt at line 124, column 41
    // f at line 125, column 2
    // f at line 125, column 7
    // abs at line 125, column 13
    // Noise at line 125, column 17
    // pos at line 125, column 23
    // pos at line 126, column 2
    // popping activation record 0:Waves17:18:for19
    // local variables: 
    // variable i, unique name 0:Waves17:18:for19:i, index 217, declared at line 122, column 11
    // references:
    // i at line 122, column 16
    // octaves at line 122, column 20
    // i at line 122, column 29
    f /= exp2(float(octaves));
    return (.5 - f) * 1.0;

}
// popping activation record 0:Waves17:18
// local variables: 
// variable octaves, unique name 0:Waves17:18:octaves, index 215, declared at line 116, column 11
// variable f, unique name 0:Waves17:18:f, index 216, declared at line 117, column 7
// references:
// pos at line 114, column 1
// vec3 at line 114, column 11
// pos at line 121, column 2
// iGlobalTime at line 121, column 9
// vec3 at line 121, column 21
// f at line 128, column 1
// exp2 at line 128, column 6
// float at line 128, column 11
// octaves at line 128, column 17
// f at line 130, column 12
// popping activation record 0:Waves17
// local variables: 
// variable pos, unique name 0:Waves17:pos, index 214, declared at line 112, column 18
// references:
// pushing activation record 0:WavesDetail21
float WavesDetail(vec3 pos)
{
// pushing activation record 0:WavesDetail21:22
    pos *= .2 * vec3(1, 1, 1);
    const int octaves = 8;
    float f = 0.0;
    pos += iGlobalTime * vec3(0, .1, .1);
    // pushing activation record 0:WavesDetail21:22:for23
    for (int i = 0; i < octaves; i++) {
    // pushing activation record 0:WavesDetail21:22:for23:24
        pos = (pos.yzx + pos.zyx * vec3(1, -1, 1)) / sqrt(2.0);
        f = f * 2.0 + abs(NoisePrecise(pos).x - .5) * 2.0;
        pos *= 2.0;

    }
    // popping activation record 0:WavesDetail21:22:for23:24
    // local variables: 
    // references:
    // pos at line 145, column 2
    // pos at line 145, column 9
    // pos at line 145, column 19
    // vec3 at line 145, column 27
    // sqrt at line 145, column 41
    // f at line 146, column 2
    // f at line 146, column 7
    // abs at line 146, column 13
    // NoisePrecise at line 146, column 17
    // pos at line 146, column 30
    // pos at line 147, column 2
    // popping activation record 0:WavesDetail21:22:for23
    // local variables: 
    // variable i, unique name 0:WavesDetail21:22:for23:i, index 222, declared at line 143, column 11
    // references:
    // i at line 143, column 16
    // octaves at line 143, column 20
    // i at line 143, column 29
    f /= exp2(float(octaves));
    return (.5 - f) * 1.0;

}
// popping activation record 0:WavesDetail21:22
// local variables: 
// variable octaves, unique name 0:WavesDetail21:22:octaves, index 220, declared at line 137, column 11
// variable f, unique name 0:WavesDetail21:22:f, index 221, declared at line 138, column 7
// references:
// pos at line 135, column 1
// vec3 at line 135, column 11
// pos at line 142, column 2
// iGlobalTime at line 142, column 9
// vec3 at line 142, column 21
// f at line 149, column 1
// exp2 at line 149, column 6
// float at line 149, column 11
// octaves at line 149, column 17
// f at line 151, column 12
// popping activation record 0:WavesDetail21
// local variables: 
// variable pos, unique name 0:WavesDetail21:pos, index 219, declared at line 133, column 24
// references:
// pushing activation record 0:WavesSmooth25
float WavesSmooth(vec3 pos)
{
// pushing activation record 0:WavesSmooth25:26
    pos *= .2 * vec3(1, 1, 1);
    const int octaves = 2;
    float f = 0.0;
    pos += iGlobalTime * vec3(0, .1, .1);
    // pushing activation record 0:WavesSmooth25:26:for27
    for (int i = 0; i < octaves; i++) {
    // pushing activation record 0:WavesSmooth25:26:for27:28
        pos = (pos.yzx + pos.zyx * vec3(1, -1, 1)) / sqrt(2.0);
        f = f * 2.0 + sqrt(pow(NoisePrecise(pos).x - .5, 2.0) + .01) * 2.0;
        pos *= 2.0;

    }
    // popping activation record 0:WavesSmooth25:26:for27:28
    // local variables: 
    // references:
    // pos at line 166, column 2
    // pos at line 166, column 9
    // pos at line 166, column 19
    // vec3 at line 166, column 27
    // sqrt at line 166, column 41
    // f at line 168, column 2
    // f at line 168, column 7
    // sqrt at line 168, column 13
    // pow at line 168, column 18
    // NoisePrecise at line 168, column 22
    // pos at line 168, column 35
    // pos at line 169, column 2
    // popping activation record 0:WavesSmooth25:26:for27
    // local variables: 
    // variable i, unique name 0:WavesSmooth25:26:for27:i, index 227, declared at line 164, column 11
    // references:
    // i at line 164, column 16
    // octaves at line 164, column 20
    // i at line 164, column 29
    f /= exp2(float(octaves));
    return (.5 - f) * 1.0;

}
// popping activation record 0:WavesSmooth25:26
// local variables: 
// variable octaves, unique name 0:WavesSmooth25:26:octaves, index 225, declared at line 158, column 11
// variable f, unique name 0:WavesSmooth25:26:f, index 226, declared at line 159, column 7
// references:
// pos at line 156, column 1
// vec3 at line 156, column 11
// pos at line 163, column 2
// iGlobalTime at line 163, column 9
// vec3 at line 163, column 21
// f at line 171, column 1
// exp2 at line 171, column 6
// float at line 171, column 11
// octaves at line 171, column 17
// f at line 173, column 12
// popping activation record 0:WavesSmooth25
// local variables: 
// variable pos, unique name 0:WavesSmooth25:pos, index 224, declared at line 154, column 24
// references:
// pushing activation record 0:WaveCrests29
float WaveCrests(vec3 ipos, in vec2 fragCoord)
{
// pushing activation record 0:WaveCrests29:30
    vec3 pos = ipos;
    pos *= .2 * vec3(1, 1, 1);
    const int octaves1 = 6;
    const int octaves2 = 16;
    float f = 0.0;
    pos += iGlobalTime * vec3(0, .1, .1);
    vec3 pos2 = pos;
    // pushing activation record 0:WaveCrests29:30:for31
    for (int i = 0; i < octaves1; i++) {
    // pushing activation record 0:WaveCrests29:30:for31:32
        pos = (pos.yzx + pos.zyx * vec3(1, -1, 1)) / sqrt(2.0);
        f = f * 1.5 + abs(Noise(pos).x - .5) * 2.0;
        pos *= 2.0;

    }
    // popping activation record 0:WaveCrests29:30:for31:32
    // local variables: 
    // references:
    // pos at line 191, column 2
    // pos at line 191, column 9
    // pos at line 191, column 19
    // vec3 at line 191, column 27
    // sqrt at line 191, column 41
    // f at line 192, column 2
    // f at line 192, column 7
    // abs at line 192, column 13
    // Noise at line 192, column 17
    // pos at line 192, column 23
    // pos at line 193, column 2
    // popping activation record 0:WaveCrests29:30:for31
    // local variables: 
    // variable i, unique name 0:WaveCrests29:30:for31:i, index 236, declared at line 189, column 11
    // references:
    // i at line 189, column 16
    // octaves1 at line 189, column 20
    // i at line 189, column 30
    pos = pos2 * exp2(float(octaves1));
    pos.y = -.05 * iGlobalTime;
    // pushing activation record 0:WaveCrests29:30:for33
    for (int i = octaves1; i < octaves2; i++) {
    // pushing activation record 0:WaveCrests29:30:for33:34
        pos = (pos.yzx + pos.zyx * vec3(1, -1, 1)) / sqrt(2.0);
        f = f * 1.5 + pow(abs(Noise(pos).x - .5) * 2.0, 1.0);
        pos *= 2.0;

    }
    // popping activation record 0:WaveCrests29:30:for33:34
    // local variables: 
    // references:
    // pos at line 199, column 2
    // pos at line 199, column 9
    // pos at line 199, column 19
    // vec3 at line 199, column 27
    // sqrt at line 199, column 41
    // f at line 200, column 2
    // f at line 200, column 7
    // pow at line 200, column 13
    // abs at line 200, column 17
    // Noise at line 200, column 21
    // pos at line 200, column 27
    // pos at line 201, column 2
    // popping activation record 0:WaveCrests29:30:for33
    // local variables: 
    // variable i, unique name 0:WaveCrests29:30:for33:i, index 237, declared at line 197, column 11
    // references:
    // octaves1 at line 197, column 13
    // i at line 197, column 23
    // octaves2 at line 197, column 27
    // i at line 197, column 37
    f /= 1500.0;
    f -= Noise(ivec2(fragCoord.xy)).x * .01;
    return pow(smoothstep(.4, -.1, f), 6.0);

}
// popping activation record 0:WaveCrests29:30
// local variables: 
// variable pos, unique name 0:WaveCrests29:30:pos, index 231, declared at line 178, column 6
// variable octaves1, unique name 0:WaveCrests29:30:octaves1, index 232, declared at line 181, column 11
// variable octaves2, unique name 0:WaveCrests29:30:octaves2, index 233, declared at line 182, column 11
// variable f, unique name 0:WaveCrests29:30:f, index 234, declared at line 183, column 7
// variable pos2, unique name 0:WaveCrests29:30:pos2, index 235, declared at line 188, column 6
// references:
// ipos at line 178, column 12
// pos at line 179, column 1
// vec3 at line 179, column 11
// pos at line 187, column 1
// iGlobalTime at line 187, column 8
// vec3 at line 187, column 20
// pos at line 188, column 13
// pos at line 195, column 1
// pos2 at line 195, column 7
// exp2 at line 195, column 14
// float at line 195, column 19
// octaves1 at line 195, column 25
// pos at line 196, column 1
// iGlobalTime at line 196, column 14
// f at line 203, column 1
// f at line 205, column 1
// Noise at line 205, column 6
// ivec2 at line 205, column 12
// fragCoord at line 205, column 18
// pow at line 207, column 8
// smoothstep at line 207, column 12
// f at line 207, column 30
// popping activation record 0:WaveCrests29
// local variables: 
// variable ipos, unique name 0:WaveCrests29:ipos, index 229, declared at line 176, column 23
// variable fragCoord, unique name 0:WaveCrests29:fragCoord, index 230, declared at line 176, column 37
// references:
// pushing activation record 0:Sky35
vec3 Sky(vec3 ray)
{
// pushing activation record 0:Sky35:36
    return vec3(.4, .45, .5);

}
// popping activation record 0:Sky35:36
// local variables: 
// references:
// vec3 at line 213, column 8
// popping activation record 0:Sky35
// local variables: 
// variable ray, unique name 0:Sky35:ray, index 239, declared at line 211, column 15
// references:
vec3 boatRight, boatUp, boatForward;
vec3 boatPosition;
// pushing activation record 0:ComputeBoatTransform37
void ComputeBoatTransform()
{
// pushing activation record 0:ComputeBoatTransform37:38
    vec3 samples[5];
    samples[0] = vec3(0, 0, 0);
    samples[1] = vec3(0, 0, .5);
    samples[2] = vec3(0, 0, -.5);
    samples[3] = vec3(.5, 0, 0);
    samples[4] = vec3(-.5, 0, 0);
    samples[0].y = WavesSmooth(samples[0]);
    samples[1].y = WavesSmooth(samples[1]);
    samples[2].y = WavesSmooth(samples[2]);
    samples[3].y = WavesSmooth(samples[3]);
    samples[4].y = WavesSmooth(samples[4]);
    boatPosition = (samples[0] + samples[1] + samples[2] + samples[3] + samples[4]) / 5.0;
    boatRight = samples[3] - samples[4];
    boatForward = samples[1] - samples[2];
    boatUp = normalize(cross(boatForward, boatRight));
    boatRight = normalize(cross(boatUp, boatForward));
    boatForward = normalize(boatForward);
    boatPosition += .0 * boatUp;

}
// popping activation record 0:ComputeBoatTransform37:38
// local variables: 
// variable samples, unique name 0:ComputeBoatTransform37:38:samples, index 245, declared at line 222, column 6
// references:
// samples at line 224, column 1
// vec3 at line 224, column 14
// samples at line 225, column 1
// vec3 at line 225, column 14
// samples at line 226, column 1
// vec3 at line 226, column 14
// samples at line 227, column 1
// vec3 at line 227, column 14
// samples at line 228, column 1
// vec3 at line 228, column 14
// samples at line 230, column 1
// WavesSmooth at line 230, column 16
// samples at line 230, column 28
// samples at line 231, column 1
// WavesSmooth at line 231, column 16
// samples at line 231, column 28
// samples at line 232, column 1
// WavesSmooth at line 232, column 16
// samples at line 232, column 28
// samples at line 233, column 1
// WavesSmooth at line 233, column 16
// samples at line 233, column 28
// samples at line 234, column 1
// WavesSmooth at line 234, column 16
// samples at line 234, column 28
// boatPosition at line 236, column 1
// samples at line 236, column 17
// samples at line 236, column 28
// samples at line 236, column 39
// samples at line 236, column 50
// samples at line 236, column 61
// boatRight at line 238, column 1
// samples at line 238, column 13
// samples at line 238, column 24
// boatForward at line 239, column 1
// samples at line 239, column 15
// samples at line 239, column 26
// boatUp at line 240, column 1
// normalize at line 240, column 10
// cross at line 240, column 20
// boatForward at line 240, column 26
// boatRight at line 240, column 38
// boatRight at line 241, column 1
// normalize at line 241, column 13
// cross at line 241, column 23
// boatUp at line 241, column 29
// boatForward at line 241, column 36
// boatForward at line 242, column 1
// normalize at line 242, column 15
// boatForward at line 242, column 25
// boatPosition at line 244, column 1
// boatUp at line 244, column 20
// popping activation record 0:ComputeBoatTransform37
// local variables: 
// references:
// pushing activation record 0:BoatToWorld39
vec3 BoatToWorld(vec3 dir)
{
// pushing activation record 0:BoatToWorld39:40
    return dir.x * boatRight + dir.x * boatUp + dir.x * boatForward;

}
// popping activation record 0:BoatToWorld39:40
// local variables: 
// references:
// dir at line 249, column 8
// boatRight at line 249, column 14
// dir at line 249, column 24
// boatUp at line 249, column 30
// dir at line 249, column 37
// boatForward at line 249, column 43
// popping activation record 0:BoatToWorld39
// local variables: 
// variable dir, unique name 0:BoatToWorld39:dir, index 247, declared at line 247, column 23
// references:
// pushing activation record 0:WorldToBoat41
vec3 WorldToBoat(vec3 dir)
{
// pushing activation record 0:WorldToBoat41:42
    return vec3(dot(dir, boatRight), dot(dir, boatUp), dot(dir, boatForward));

}
// popping activation record 0:WorldToBoat41:42
// local variables: 
// references:
// vec3 at line 254, column 8
// dot at line 254, column 14
// dir at line 254, column 18
// boatRight at line 254, column 22
// dot at line 254, column 34
// dir at line 254, column 38
// boatUp at line 254, column 42
// dot at line 254, column 51
// dir at line 254, column 55
// boatForward at line 254, column 59
// popping activation record 0:WorldToBoat41
// local variables: 
// variable dir, unique name 0:WorldToBoat41:dir, index 249, declared at line 252, column 23
// references:
// pushing activation record 0:TraceBoat43
float TraceBoat(vec3 pos, vec3 ray)
{
// pushing activation record 0:TraceBoat43:44
    vec3 c = boatPosition;
    float r = 1.0;
    c -= pos;
    float t = dot(c, ray);
    float p = length(c - t * ray);
    if (p > r) return 0.0;
    return t - sqrt(r * r - p * p);

}
// popping activation record 0:TraceBoat43:44
// local variables: 
// variable c, unique name 0:TraceBoat43:44:c, index 253, declared at line 259, column 6
// variable r, unique name 0:TraceBoat43:44:r, index 254, declared at line 260, column 7
// variable t, unique name 0:TraceBoat43:44:t, index 255, declared at line 264, column 7
// variable p, unique name 0:TraceBoat43:44:p, index 256, declared at line 266, column 7
// references:
// boatPosition at line 259, column 10
// c at line 262, column 1
// pos at line 262, column 6
// dot at line 264, column 11
// c at line 264, column 15
// ray at line 264, column 17
// length at line 266, column 11
// c at line 266, column 18
// t at line 266, column 20
// ray at line 266, column 22
// p at line 267, column 6
// r at line 267, column 10
// t at line 270, column 8
// sqrt at line 270, column 10
// r at line 270, column 15
// r at line 270, column 17
// p at line 270, column 19
// p at line 270, column 21
// popping activation record 0:TraceBoat43
// local variables: 
// variable pos, unique name 0:TraceBoat43:pos, index 251, declared at line 257, column 22
// variable ray, unique name 0:TraceBoat43:ray, index 252, declared at line 257, column 32
// references:
// pushing activation record 0:ShadeBoat45
vec3 ShadeBoat(vec3 pos, vec3 ray)
{
// pushing activation record 0:ShadeBoat45:46
    pos -= boatPosition;
    vec3 norm = normalize(pos);
    pos = WorldToBoat(pos);
    vec3 lightDir = normalize(vec3(-2, 3, 1));
    float ndotl = dot(norm, lightDir);
    vec3 light = smoothstep(-.1, 1.0, ndotl) * vec3(1.0, .9, .8) + vec3(.06, .1, .1);
    float aa = 4.0 / iResolution.x;
    vec3 albedo = vec3(1, .01, 0);
    albedo = mix(vec3(.04), albedo, smoothstep(.25 - aa, .25, abs(pos.y)));
    albedo = mix(mix(vec3(1), vec3(.04), smoothstep(-aa * 4.0, aa * 4.0, cos(atan(pos.x, pos.z) * 6.0))), albedo, smoothstep(.2 - aa * 1.5, .2, abs(pos.y)));
    albedo = mix(vec3(.04), albedo, smoothstep(.05 - aa * 1.0, .05, abs(abs(pos.y) - .6)));
    albedo = mix(vec3(1, .8, .08), albedo, smoothstep(.05 - aa * 1.0, .05, abs(abs(pos.y) - .65)));
    vec3 col = albedo * light;
    vec3 h = normalize(lightDir - ray);
    float s = pow(max(0.0, dot(norm, h)), 100.0) * 100.0 / 32.0;
    vec3 specular = s * vec3(1, 1, 1);
    vec3 rr = reflect(ray, norm);
    specular += mix(vec3(0, .04, .04), Sky(rr), smoothstep(-.1, .1, rr.y));
    float ndotr = dot(norm, ray);
    float fresnel = pow(1.0 - abs(ndotr), 5.0);
    fresnel = mix(.001, 1.0, fresnel);
    col = mix(col, specular, fresnel);
    return col;

}
// popping activation record 0:ShadeBoat45:46
// local variables: 
// variable norm, unique name 0:ShadeBoat45:46:norm, index 260, declared at line 277, column 6
// variable lightDir, unique name 0:ShadeBoat45:46:lightDir, index 261, declared at line 280, column 6
// variable ndotl, unique name 0:ShadeBoat45:46:ndotl, index 262, declared at line 281, column 7
// variable light, unique name 0:ShadeBoat45:46:light, index 263, declared at line 284, column 6
// variable aa, unique name 0:ShadeBoat45:46:aa, index 264, declared at line 287, column 7
// variable albedo, unique name 0:ShadeBoat45:46:albedo, index 265, declared at line 290, column 6
// variable col, unique name 0:ShadeBoat45:46:col, index 266, declared at line 296, column 6
// variable h, unique name 0:ShadeBoat45:46:h, index 267, declared at line 299, column 6
// variable s, unique name 0:ShadeBoat45:46:s, index 268, declared at line 300, column 7
// variable specular, unique name 0:ShadeBoat45:46:specular, index 269, declared at line 302, column 6
// variable rr, unique name 0:ShadeBoat45:46:rr, index 270, declared at line 304, column 6
// variable ndotr, unique name 0:ShadeBoat45:46:ndotr, index 271, declared at line 307, column 7
// variable fresnel, unique name 0:ShadeBoat45:46:fresnel, index 272, declared at line 308, column 7
// references:
// pos at line 276, column 1
// boatPosition at line 276, column 8
// normalize at line 277, column 13
// pos at line 277, column 23
// pos at line 278, column 1
// WorldToBoat at line 278, column 7
// pos at line 278, column 19
// normalize at line 280, column 17
// vec3 at line 280, column 27
// dot at line 281, column 15
// norm at line 281, column 19
// lightDir at line 281, column 24
// smoothstep at line 284, column 14
// ndotl at line 284, column 33
// vec3 at line 284, column 40
// vec3 at line 284, column 56
// iResolution at line 287, column 16
// vec3 at line 290, column 15
// albedo at line 291, column 1
// mix at line 291, column 10
// vec3 at line 291, column 15
// albedo at line 291, column 26
// smoothstep at line 291, column 34
// aa at line 291, column 50
// abs at line 291, column 59
// pos at line 291, column 63
// albedo at line 292, column 1
// mix at line 292, column 10
// mix at line 292, column 15
// vec3 at line 292, column 20
// vec3 at line 292, column 29
// smoothstep at line 292, column 40
// aa at line 292, column 52
// aa at line 292, column 59
// cos at line 292, column 66
// atan at line 292, column 70
// pos at line 292, column 75
// pos at line 292, column 81
// albedo at line 292, column 97
// smoothstep at line 292, column 105
// aa at line 292, column 120
// abs at line 292, column 132
// pos at line 292, column 136
// albedo at line 293, column 1
// mix at line 293, column 10
// vec3 at line 293, column 15
// albedo at line 293, column 26
// smoothstep at line 293, column 34
// aa at line 293, column 50
// abs at line 293, column 63
// abs at line 293, column 67
// pos at line 293, column 71
// albedo at line 294, column 1
// mix at line 294, column 10
// vec3 at line 294, column 15
// albedo at line 294, column 31
// smoothstep at line 294, column 39
// aa at line 294, column 55
// abs at line 294, column 68
// abs at line 294, column 72
// pos at line 294, column 76
// albedo at line 296, column 12
// light at line 296, column 19
// normalize at line 299, column 10
// lightDir at line 299, column 20
// ray at line 299, column 29
// pow at line 300, column 11
// max at line 300, column 15
// dot at line 300, column 23
// norm at line 300, column 27
// h at line 300, column 32
// s at line 302, column 17
// vec3 at line 302, column 19
// reflect at line 304, column 11
// ray at line 304, column 19
// norm at line 304, column 23
// specular at line 305, column 1
// mix at line 305, column 13
// vec3 at line 305, column 18
// Sky at line 305, column 35
// rr at line 305, column 39
// smoothstep at line 305, column 44
// rr at line 305, column 65
// dot at line 307, column 15
// norm at line 307, column 19
// ray at line 307, column 24
// pow at line 308, column 17
// abs at line 308, column 25
// ndotr at line 308, column 29
// fresnel at line 309, column 1
// mix at line 309, column 11
// fresnel at line 309, column 27
// col at line 311, column 1
// mix at line 311, column 7
// col at line 311, column 12
// specular at line 311, column 17
// fresnel at line 311, column 27
// col at line 313, column 8
// popping activation record 0:ShadeBoat45
// local variables: 
// variable pos, unique name 0:ShadeBoat45:pos, index 258, declared at line 274, column 21
// variable ray, unique name 0:ShadeBoat45:ray, index 259, declared at line 274, column 31
// references:
// pushing activation record 0:OceanDistanceField47
float OceanDistanceField(vec3 pos)
{
// pushing activation record 0:OceanDistanceField47:48
    return pos.y - Waves(pos);

}
// popping activation record 0:OceanDistanceField47:48
// local variables: 
// references:
// pos at line 319, column 8
// Waves at line 319, column 16
// pos at line 319, column 22
// popping activation record 0:OceanDistanceField47
// local variables: 
// variable pos, unique name 0:OceanDistanceField47:pos, index 274, declared at line 317, column 31
// references:
// pushing activation record 0:OceanDistanceFieldDetail49
float OceanDistanceFieldDetail(vec3 pos)
{
// pushing activation record 0:OceanDistanceFieldDetail49:50
    return pos.y - WavesDetail(pos);

}
// popping activation record 0:OceanDistanceFieldDetail49:50
// local variables: 
// references:
// pos at line 324, column 8
// WavesDetail at line 324, column 16
// pos at line 324, column 28
// popping activation record 0:OceanDistanceFieldDetail49
// local variables: 
// variable pos, unique name 0:OceanDistanceFieldDetail49:pos, index 276, declared at line 322, column 37
// references:
// pushing activation record 0:OceanNormal51
vec3 OceanNormal(vec3 pos)
{
// pushing activation record 0:OceanNormal51:52
    vec3 norm;
    vec2 d = vec2(.01 * length(pos), 0);
    norm.x = OceanDistanceFieldDetail(pos + d.xyy) - OceanDistanceFieldDetail(pos - d.xyy);
    norm.y = OceanDistanceFieldDetail(pos + d.yxy) - OceanDistanceFieldDetail(pos - d.yxy);
    norm.z = OceanDistanceFieldDetail(pos + d.yyx) - OceanDistanceFieldDetail(pos - d.yyx);
    return normalize(norm);

}
// popping activation record 0:OceanNormal51:52
// local variables: 
// variable norm, unique name 0:OceanNormal51:52:norm, index 279, declared at line 329, column 6
// variable d, unique name 0:OceanNormal51:52:d, index 280, declared at line 330, column 6
// references:
// vec2 at line 330, column 10
// length at line 330, column 19
// pos at line 330, column 26
// norm at line 332, column 1
// OceanDistanceFieldDetail at line 332, column 10
// pos at line 332, column 36
// d at line 332, column 40
// OceanDistanceFieldDetail at line 332, column 48
// pos at line 332, column 74
// d at line 332, column 78
// norm at line 333, column 1
// OceanDistanceFieldDetail at line 333, column 10
// pos at line 333, column 36
// d at line 333, column 40
// OceanDistanceFieldDetail at line 333, column 48
// pos at line 333, column 74
// d at line 333, column 78
// norm at line 334, column 1
// OceanDistanceFieldDetail at line 334, column 10
// pos at line 334, column 36
// d at line 334, column 40
// OceanDistanceFieldDetail at line 334, column 48
// pos at line 334, column 74
// d at line 334, column 78
// normalize at line 336, column 8
// norm at line 336, column 18
// popping activation record 0:OceanNormal51
// local variables: 
// variable pos, unique name 0:OceanNormal51:pos, index 278, declared at line 327, column 23
// references:
// pushing activation record 0:TraceOcean53
float TraceOcean(vec3 pos, vec3 ray)
{
// pushing activation record 0:TraceOcean53:54
    float h = 1.0;
    float t = 0.0;
    // pushing activation record 0:TraceOcean53:54:for55
    for (int i = 0; i < 100; i++) {
    // pushing activation record 0:TraceOcean53:54:for55:56
        if (h < .01 || t > 100.0) break;
        h = OceanDistanceField(pos + t * ray);
        t += h;

    }
    // popping activation record 0:TraceOcean53:54:for55:56
    // local variables: 
    // references:
    // h at line 345, column 7
    // t at line 345, column 18
    // h at line 347, column 2
    // OceanDistanceField at line 347, column 6
    // pos at line 347, column 26
    // t at line 347, column 30
    // ray at line 347, column 32
    // t at line 348, column 2
    // h at line 348, column 7
    // popping activation record 0:TraceOcean53:54:for55
    // local variables: 
    // variable i, unique name 0:TraceOcean53:54:for55:i, index 286, declared at line 343, column 11
    // references:
    // i at line 343, column 16
    // i at line 343, column 25
    if (h > .1) return 0.0;
    return t;

}
// popping activation record 0:TraceOcean53:54
// local variables: 
// variable h, unique name 0:TraceOcean53:54:h, index 284, declared at line 341, column 7
// variable t, unique name 0:TraceOcean53:54:t, index 285, declared at line 342, column 7
// references:
// h at line 351, column 6
// t at line 354, column 8
// popping activation record 0:TraceOcean53
// local variables: 
// variable pos, unique name 0:TraceOcean53:pos, index 282, declared at line 339, column 23
// variable ray, unique name 0:TraceOcean53:ray, index 283, declared at line 339, column 33
// references:
// pushing activation record 0:ShadeOcean57
vec3 ShadeOcean(vec3 pos, vec3 ray, in vec2 fragCoord)
{
// pushing activation record 0:ShadeOcean57:58
    vec3 norm = OceanNormal(pos);
    float ndotr = dot(ray, norm);
    float fresnel = pow(1.0 - abs(ndotr), 5.0);
    vec3 reflectedRay = ray - 2.0 * norm * ndotr;
    vec3 refractedRay = ray + (-cos(1.33 * acos(-ndotr)) - ndotr) * norm;
    refractedRay = normalize(refractedRay);
    const float crackFudge = .0;
    vec3 reflection = Sky(reflectedRay);
    float t = TraceBoat(pos - crackFudge * reflectedRay, reflectedRay);
    if (t > 0.0) {
    // pushing activation record 0:ShadeOcean57:58:59
        reflection = ShadeBoat(pos + (t - crackFudge) * reflectedRay, reflectedRay);

    }
    // popping activation record 0:ShadeOcean57:58:59
    // local variables: 
    // references:
    // reflection at line 377, column 2
    // ShadeBoat at line 377, column 15
    // pos at line 377, column 26
    // t at line 377, column 31
    // crackFudge at line 377, column 33
    // reflectedRay at line 377, column 45
    // reflectedRay at line 377, column 59
    t = TraceBoat(pos - crackFudge * refractedRay, refractedRay);
    vec3 col = vec3(0, .04, .04);
    if (t > 0.0) {
    // pushing activation record 0:ShadeOcean57:58:60
        col = mix(col, ShadeBoat(pos + (t - crackFudge) * refractedRay, refractedRay), exp(-t));

    }
    // popping activation record 0:ShadeOcean57:58:60
    // local variables: 
    // references:
    // col at line 387, column 2
    // mix at line 387, column 8
    // col at line 387, column 13
    // ShadeBoat at line 387, column 18
    // pos at line 387, column 29
    // t at line 387, column 34
    // crackFudge at line 387, column 36
    // refractedRay at line 387, column 48
    // refractedRay at line 387, column 62
    // exp at line 387, column 78
    // t at line 387, column 83
    col = mix(col, reflection, fresnel);
    col = mix(col, vec3(1), WaveCrests(pos, fragCoord));
    return col;

}
// popping activation record 0:ShadeOcean57:58
// local variables: 
// variable norm, unique name 0:ShadeOcean57:58:norm, index 291, declared at line 360, column 6
// variable ndotr, unique name 0:ShadeOcean57:58:ndotr, index 292, declared at line 361, column 7
// variable fresnel, unique name 0:ShadeOcean57:58:fresnel, index 293, declared at line 363, column 7
// variable reflectedRay, unique name 0:ShadeOcean57:58:reflectedRay, index 294, declared at line 365, column 6
// variable refractedRay, unique name 0:ShadeOcean57:58:refractedRay, index 295, declared at line 366, column 6
// variable crackFudge, unique name 0:ShadeOcean57:58:crackFudge, index 296, declared at line 369, column 13
// variable reflection, unique name 0:ShadeOcean57:58:reflection, index 297, declared at line 372, column 6
// variable t, unique name 0:ShadeOcean57:58:t, index 298, declared at line 373, column 7
// variable col, unique name 0:ShadeOcean57:58:col, index 299, declared at line 384, column 6
// references:
// OceanNormal at line 360, column 13
// pos at line 360, column 25
// dot at line 361, column 15
// ray at line 361, column 19
// norm at line 361, column 23
// pow at line 363, column 17
// abs at line 363, column 25
// ndotr at line 363, column 29
// ray at line 365, column 21
// norm at line 365, column 29
// ndotr at line 365, column 34
// ray at line 366, column 21
// cos at line 366, column 27
// acos at line 366, column 36
// ndotr at line 366, column 42
// ndotr at line 366, column 50
// norm at line 366, column 57
// refractedRay at line 367, column 1
// normalize at line 367, column 16
// refractedRay at line 367, column 26
// Sky at line 372, column 19
// reflectedRay at line 372, column 23
// TraceBoat at line 373, column 9
// pos at line 373, column 20
// crackFudge at line 373, column 24
// reflectedRay at line 373, column 35
// reflectedRay at line 373, column 49
// t at line 375, column 6
// t at line 382, column 1
// TraceBoat at line 382, column 3
// pos at line 382, column 14
// crackFudge at line 382, column 18
// refractedRay at line 382, column 29
// refractedRay at line 382, column 43
// vec3 at line 384, column 12
// t at line 385, column 6
// col at line 390, column 1
// mix at line 390, column 7
// col at line 390, column 12
// reflection at line 390, column 17
// fresnel at line 390, column 29
// col at line 393, column 1
// mix at line 393, column 7
// col at line 393, column 12
// vec3 at line 393, column 17
// WaveCrests at line 393, column 26
// pos at line 393, column 37
// fragCoord at line 393, column 41
// col at line 395, column 8
// popping activation record 0:ShadeOcean57
// local variables: 
// variable pos, unique name 0:ShadeOcean57:pos, index 288, declared at line 358, column 22
// variable ray, unique name 0:ShadeOcean57:ray, index 289, declared at line 358, column 32
// variable fragCoord, unique name 0:ShadeOcean57:fragCoord, index 290, declared at line 358, column 45
// references:
// pushing activation record 0:mainImage61
void mainImage(out vec4 fragColor, in vec2 fragCoord)
{
// pushing activation record 0:mainImage61:62
    ComputeBoatTransform();
    vec2 camRot = vec2(.5, .5) + vec2(-.35, 4.5) * (iMouse.yx / iResolution.yx);
    vec3 pos, ray;
    CamPolar(pos, ray, vec3(0), camRot, 3.0, 1.0, fragCoord);
    float to = TraceOcean(pos, ray);
    float tb = TraceBoat(pos, ray);
    vec3 result;
    if (to > 0.0 && (to < tb || tb == 0.0)) result = ShadeOcean(pos + ray * to, ray, fragCoord);
    result *= 1.1 * smoothstep(.35, 1.0, localRay.z);
    fragColor = vec4(ToGamma(result), 1.0);

}
// popping activation record 0:mainImage61:62
// local variables: 
// variable camRot, unique name 0:mainImage61:62:camRot, index 303, declared at line 403, column 6
// variable pos, unique name 0:mainImage61:62:pos, index 304, declared at line 404, column 6
// variable ray, unique name 0:mainImage61:62:ray, index 305, declared at line 404, column 11
// variable to, unique name 0:mainImage61:62:to, index 306, declared at line 407, column 7
// variable tb, unique name 0:mainImage61:62:tb, index 307, declared at line 408, column 7
// variable result, unique name 0:mainImage61:62:result, index 308, declared at line 410, column 6
// references:
// ComputeBoatTransform at line 401, column 1
// vec2 at line 403, column 15
// vec2 at line 403, column 27
// iMouse at line 403, column 43
// iResolution at line 403, column 53
// CamPolar at line 405, column 1
// pos at line 405, column 11
// ray at line 405, column 16
// vec3 at line 405, column 21
// camRot at line 405, column 30
// fragCoord at line 405, column 48
// TraceOcean at line 407, column 12
// pos at line 407, column 24
// ray at line 407, column 29
// TraceBoat at line 408, column 12
// pos at line 408, column 23
// ray at line 408, column 28
// to at line 411, column 6
// to at line 411, column 20
// tb at line 411, column 25
// tb at line 411, column 31
// result at line 412, column 2
// ShadeOcean at line 412, column 11
// pos at line 412, column 23
// ray at line 412, column 27
// to at line 412, column 31
// ray at line 412, column 35
// fragCoord at line 412, column 40
// result at line 419, column 1
// smoothstep at line 419, column 15
// localRay at line 419, column 37
// fragColor at line 421, column 1
// vec4 at line 421, column 13
// ToGamma at line 421, column 18
// result at line 421, column 26
// popping activation record 0:mainImage61
// local variables: 
// variable fragColor, unique name 0:mainImage61:fragColor, index 301, declared at line 399, column 25
// variable fragCoord, unique name 0:mainImage61:fragCoord, index 302, declared at line 399, column 44
// references:
// undefined variables 
