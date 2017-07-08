// pushing activation record 0
mediump float uniform float time;
uniform vec2 mouse;
uniform vec2 resolution;
// pushing activation record 0:rotate1
vec3 rotate(vec3 p, float angle, vec3 axis)
{
// pushing activation record 0:rotate1:2
    vec3 a = normalize(axis);
    float s = sin(angle);
    float c = cos(angle);
    float r = 1.0 - c;
    mat3 m = mat3(a.x * a.x * r + c, a.y * a.x * r + a.z * s, a.z * a.x * r - a.y * s, a.x * a.y * r - a.z * s, a.y * a.y * r + c, a.z * a.y * r + a.x * s, a.x * a.z * r + a.y * s, a.y * a.z * r - a.x * s, a.z * a.z * r + c);
    return m * p;

}
// popping activation record 0:rotate1:2
// local variables: 
// variable a, unique name 0:rotate1:2:a, index 184, declared at line 12, column 9
// variable s, unique name 0:rotate1:2:s, index 185, declared at line 13, column 10
// variable c, unique name 0:rotate1:2:c, index 186, declared at line 14, column 10
// variable r, unique name 0:rotate1:2:r, index 187, declared at line 15, column 10
// variable m, unique name 0:rotate1:2:m, index 188, declared at line 16, column 9
// references:
// normalize at line 12, column 13
// axis at line 12, column 23
// sin at line 13, column 14
// angle at line 13, column 18
// cos at line 14, column 14
// angle at line 14, column 18
// c at line 15, column 20
// mat3 at line 16, column 13
// a at line 17, column 8
// a at line 17, column 14
// r at line 17, column 20
// c at line 17, column 24
// a at line 18, column 8
// a at line 18, column 14
// r at line 18, column 20
// a at line 18, column 24
// s at line 18, column 30
// a at line 19, column 8
// a at line 19, column 14
// r at line 19, column 20
// a at line 19, column 24
// s at line 19, column 30
// a at line 20, column 8
// a at line 20, column 14
// r at line 20, column 20
// a at line 20, column 24
// s at line 20, column 30
// a at line 21, column 8
// a at line 21, column 14
// r at line 21, column 20
// c at line 21, column 24
// a at line 22, column 8
// a at line 22, column 14
// r at line 22, column 20
// a at line 22, column 24
// s at line 22, column 30
// a at line 23, column 8
// a at line 23, column 14
// r at line 23, column 20
// a at line 23, column 24
// s at line 23, column 30
// a at line 24, column 8
// a at line 24, column 14
// r at line 24, column 20
// a at line 24, column 24
// s at line 24, column 30
// a at line 25, column 8
// a at line 25, column 14
// r at line 25, column 20
// c at line 25, column 24
// m at line 27, column 11
// p at line 27, column 15
// popping activation record 0:rotate1
// local variables: 
// variable p, unique name 0:rotate1:p, index 181, declared at line 11, column 17
// variable angle, unique name 0:rotate1:angle, index 182, declared at line 11, column 26
// variable axis, unique name 0:rotate1:axis, index 183, declared at line 11, column 38
// references:
// pushing activation record 0:random3
float random(in vec2 st)
{
// pushing activation record 0:random3:4
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453123);

}
// popping activation record 0:random3:4
// local variables: 
// references:
// fract at line 31, column 11
// sin at line 31, column 17
// dot at line 31, column 21
// st at line 31, column 25
// vec2 at line 32, column 25
// popping activation record 0:random3
// local variables: 
// variable st, unique name 0:random3:st, index 190, declared at line 30, column 22
// references:
// pushing activation record 0:noise5
float noise(in vec2 p)
{
// pushing activation record 0:noise5:6
    vec2 i = floor(p);
    vec2 f = fract(p);
    vec2 u = f * f * (3.0 - 2.0 * f);
    return mix(mix(random(i + vec2(0.0, 0.0)), random(i + vec2(1.0, 0.0)), u.x), mix(random(i + vec2(0.0, 1.0)), random(i + vec2(1.0, 1.0)), u.x), u.y);

}
// popping activation record 0:noise5:6
// local variables: 
// variable i, unique name 0:noise5:6:i, index 193, declared at line 40, column 9
// variable f, unique name 0:noise5:6:f, index 194, declared at line 41, column 9
// variable u, unique name 0:noise5:6:u, index 195, declared at line 43, column 9
// references:
// floor at line 40, column 13
// p at line 40, column 20
// fract at line 41, column 13
// p at line 41, column 20
// f at line 43, column 13
// f at line 43, column 15
// f at line 43, column 26
// mix at line 45, column 11
// mix at line 45, column 16
// random at line 45, column 21
// i at line 45, column 29
// vec2 at line 45, column 33
// random at line 46, column 21
// i at line 46, column 29
// vec2 at line 46, column 33
// u at line 46, column 50
// mix at line 47, column 16
// random at line 47, column 21
// i at line 47, column 29
// vec2 at line 47, column 33
// random at line 48, column 21
// i at line 48, column 29
// vec2 at line 48, column 33
// u at line 48, column 50
// u at line 48, column 56
// popping activation record 0:noise5
// local variables: 
// variable p, unique name 0:noise5:p, index 192, declared at line 38, column 21
// references:
const vec3 lightDir = vec3(-0.577, 0.577, 0.577);
// pushing activation record 0:sphere7
float sphere(vec3 p, float size)
{
// pushing activation record 0:sphere7:8
    p += vec3(cos(time * .01 * size + noise(vec2(time / 2.))), sin(time * size / 2.), cos(time * size / 2.));
    vec3 q = vec3(noise(vec2(time / 2.)), noise(vec2(time / 2.)), noise(vec2(time)));
    return length(mod(p, .4) - .2) - size;

}
// popping activation record 0:sphere7:8
// local variables: 
// variable q, unique name 0:sphere7:8:q, index 200, declared at line 56, column 6
// references:
// p at line 54, column 1
// vec3 at line 54, column 6
// cos at line 54, column 11
// time at line 54, column 15
// size at line 54, column 24
// noise at line 54, column 29
// vec2 at line 54, column 35
// time at line 54, column 40
// sin at line 54, column 54
// time at line 54, column 58
// size at line 54, column 63
// cos at line 54, column 75
// time at line 54, column 79
// size at line 54, column 84
// vec3 at line 56, column 10
// noise at line 56, column 15
// vec2 at line 56, column 21
// time at line 56, column 26
// noise at line 56, column 39
// vec2 at line 56, column 45
// time at line 56, column 50
// noise at line 56, column 63
// vec2 at line 56, column 69
// time at line 56, column 74
// length at line 57, column 8
// mod at line 57, column 15
// p at line 57, column 19
// size at line 57, column 34
// popping activation record 0:sphere7
// local variables: 
// variable p, unique name 0:sphere7:p, index 198, declared at line 53, column 18
// variable size, unique name 0:sphere7:size, index 199, declared at line 53, column 27
// references:
// pushing activation record 0:distanceFunc9
float distanceFunc(vec3 p)
{
// pushing activation record 0:distanceFunc9:10
    p += vec3(cos(time * .01), sin(time * .01), cos(time * .01));
    p = rotate(p, radians(time) * 0.3, vec3(1., 0., 0.));
    float obj1 = sphere(p, .1);
    float obj2 = max(-obj1, sphere(p * p, .2));
    float obj3 = min(obj2, sphere(p - obj1 - obj2, .4));
    float dist = obj3;
    return dist * max(-obj1, min(obj2, obj3));

}
// popping activation record 0:distanceFunc9:10
// local variables: 
// variable obj1, unique name 0:distanceFunc9:10:obj1, index 203, declared at line 66, column 7
// variable obj2, unique name 0:distanceFunc9:10:obj2, index 204, declared at line 67, column 7
// variable obj3, unique name 0:distanceFunc9:10:obj3, index 205, declared at line 68, column 7
// variable dist, unique name 0:distanceFunc9:10:dist, index 206, declared at line 71, column 7
// references:
// p at line 63, column 1
// vec3 at line 63, column 6
// cos at line 63, column 11
// time at line 63, column 15
// sin at line 63, column 26
// time at line 63, column 30
// cos at line 63, column 41
// time at line 63, column 45
// p at line 64, column 1
// rotate at line 64, column 5
// p at line 64, column 12
// radians at line 64, column 15
// time at line 64, column 23
// vec3 at line 64, column 34
// sphere at line 66, column 14
// p at line 66, column 21
// max at line 67, column 14
// obj1 at line 67, column 19
// sphere at line 67, column 25
// p at line 67, column 32
// p at line 67, column 34
// min at line 68, column 14
// obj2 at line 68, column 18
// sphere at line 68, column 24
// p at line 68, column 31
// obj1 at line 68, column 33
// obj2 at line 68, column 38
// obj3 at line 71, column 14
// dist at line 73, column 8
// max at line 73, column 14
// obj1 at line 73, column 19
// min at line 73, column 25
// obj2 at line 73, column 29
// obj3 at line 73, column 35
// popping activation record 0:distanceFunc9
// local variables: 
// variable p, unique name 0:distanceFunc9:p, index 202, declared at line 61, column 24
// references:
// pushing activation record 0:getNormal11
vec3 getNormal(vec3 p)
{
// pushing activation record 0:getNormal11:12
    float d = 0.1;
    return normalize(vec3(distanceFunc(p + vec3(d, 0.0, 0.0)) - distanceFunc(p + vec3(-d, 0.0, 0.0)), distanceFunc(p + vec3(0.0, d, 0.0)) - distanceFunc(p + vec3(0.0, -d, 0.0)), distanceFunc(p + vec3(0.0, 0.0, d)) - distanceFunc(p + vec3(0.0, 0.0, -d))));

}
// popping activation record 0:getNormal11:12
// local variables: 
// variable d, unique name 0:getNormal11:12:d, index 209, declared at line 77, column 10
// references:
// normalize at line 78, column 11
// vec3 at line 78, column 21
// distanceFunc at line 79, column 8
// p at line 79, column 21
// vec3 at line 79, column 25
// d at line 79, column 32
// distanceFunc at line 79, column 48
// p at line 79, column 61
// vec3 at line 79, column 65
// d at line 79, column 72
// distanceFunc at line 80, column 8
// p at line 80, column 21
// vec3 at line 80, column 25
// d at line 80, column 37
// distanceFunc at line 80, column 48
// p at line 80, column 61
// vec3 at line 80, column 65
// d at line 80, column 77
// distanceFunc at line 81, column 8
// p at line 81, column 21
// vec3 at line 81, column 25
// d at line 81, column 42
// distanceFunc at line 81, column 48
// p at line 81, column 61
// vec3 at line 81, column 65
// d at line 81, column 82
// popping activation record 0:getNormal11
// local variables: 
// variable p, unique name 0:getNormal11:p, index 208, declared at line 76, column 20
// references:
// pushing activation record 0:main13
void main()
{
// pushing activation record 0:main13:14
    vec2 p = (gl_FragCoord.xy * 2.0 - resolution) / min(resolution.x, resolution.y);
    vec3 cPos = vec3(0.0, 0.0, 2.);
    vec3 cDir = vec3(0.0, 0.0, -1.);
    vec3 cUp = vec3(0.0, 1.0, 0.0);
    vec3 cSide = cross(cDir, cUp);
    float targetDepth = 1.;
    vec3 ray = normalize(cSide * p.y - cUp * p.x + cDir * targetDepth);
    float distance = 0.0;
    float rLen = 0.0;
    vec3 rPos = cPos;
    // pushing activation record 0:main13:14:for15
    for (int i = 0; i < 26; i++) {
    // pushing activation record 0:main13:14:for15:16
        distance = distanceFunc(rPos);
        rLen += distance;
        rPos = rPos * .2 + max(-(cPos - ray * rLen * .75), (cPos + ray * rLen * .75));

    }
    // popping activation record 0:main13:14:for15:16
    // local variables: 
    // references:
    // distance at line 104, column 8
    // distanceFunc at line 104, column 19
    // rPos at line 104, column 32
    // rLen at line 105, column 8
    // distance at line 105, column 16
    // rPos at line 106, column 8
    // rPos at line 106, column 15
    // max at line 106, column 27
    // cPos at line 106, column 33
    // ray at line 106, column 40
    // rLen at line 106, column 46
    // cPos at line 106, column 60
    // ray at line 106, column 67
    // rLen at line 106, column 73
    // popping activation record 0:main13:14:for15
    // local variables: 
    // variable i, unique name 0:main13:14:for15:i, index 221, declared at line 103, column 12
    // references:
    // i at line 103, column 19
    // i at line 103, column 27
    vec3 normal = getNormal(length(rPos) - length(p) * .5 - rPos * 1.);
    float diff = clamp(dot(lightDir * lightDir + noise(vec2(lightDir / 20.)), normal) / 3., 0.0, 1.0);
    diff = dot(lightDir * lightDir, normal);
    vec3 lightDir2 = vec3(0.877, -0.577, 0.577);
    float diff2 = dot(lightDir2 * lightDir2, normal);
    vec3 lightDir3 = vec3(0.877, -0.877, 0.577);
    float diff3 = dot(lightDir3 * lightDir3, normal);
    gl_FragColor = vec4(vec3(diff3 * 2.4, diff2 * 2., diff * 3.), 1.) * 0.7;

}
// popping activation record 0:main13:14
// local variables: 
// variable p, unique name 0:main13:14:p, index 211, declared at line 87, column 9
// variable cPos, unique name 0:main13:14:cPos, index 212, declared at line 90, column 9
// variable cDir, unique name 0:main13:14:cDir, index 213, declared at line 91, column 9
// variable cUp, unique name 0:main13:14:cUp, index 214, declared at line 92, column 9
// variable cSide, unique name 0:main13:14:cSide, index 215, declared at line 93, column 9
// variable targetDepth, unique name 0:main13:14:targetDepth, index 216, declared at line 94, column 10
// variable ray, unique name 0:main13:14:ray, index 217, declared at line 97, column 9
// variable distance, unique name 0:main13:14:distance, index 218, declared at line 100, column 10
// variable rLen, unique name 0:main13:14:rLen, index 219, declared at line 101, column 10
// variable rPos, unique name 0:main13:14:rPos, index 220, declared at line 102, column 10
// variable normal, unique name 0:main13:14:normal, index 222, declared at line 110, column 6
// variable diff, unique name 0:main13:14:diff, index 223, declared at line 111, column 14
// variable lightDir2, unique name 0:main13:14:lightDir2, index 224, declared at line 115, column 9
// variable diff2, unique name 0:main13:14:diff2, index 225, declared at line 116, column 10
// variable lightDir3, unique name 0:main13:14:lightDir3, index 226, declared at line 118, column 9
// variable diff3, unique name 0:main13:14:diff3, index 227, declared at line 119, column 10
// references:
// gl_FragCoord at line 87, column 14
// resolution at line 87, column 38
// min at line 87, column 52
// resolution at line 87, column 56
// resolution at line 87, column 70
// vec3 at line 90, column 16
// vec3 at line 91, column 16
// vec3 at line 92, column 16
// cross at line 93, column 17
// cDir at line 93, column 23
// cUp at line 93, column 29
// normalize at line 97, column 15
// cSide at line 97, column 25
// p at line 97, column 33
// cUp at line 97, column 39
// p at line 97, column 45
// cDir at line 97, column 51
// targetDepth at line 97, column 58
// cPos at line 102, column 17
// getNormal at line 110, column 15
// length at line 110, column 25
// rPos at line 110, column 32
// length at line 110, column 40
// p at line 110, column 47
// rPos at line 110, column 55
// clamp at line 111, column 21
// dot at line 111, column 27
// lightDir at line 111, column 31
// lightDir at line 111, column 42
// noise at line 111, column 51
// vec2 at line 111, column 57
// lightDir at line 111, column 62
// normal at line 111, column 80
// diff at line 113, column 4
// dot at line 113, column 11
// lightDir at line 113, column 15
// lightDir at line 113, column 26
// normal at line 113, column 37
// vec3 at line 115, column 21
// dot at line 116, column 18
// lightDir2 at line 116, column 22
// lightDir2 at line 116, column 34
// normal at line 116, column 45
// vec3 at line 118, column 21
// dot at line 119, column 18
// lightDir3 at line 119, column 22
// lightDir3 at line 119, column 34
// normal at line 119, column 45
// gl_FragColor at line 121, column 4
// vec4 at line 121, column 19
// vec3 at line 121, column 24
// diff3 at line 121, column 29
// diff2 at line 121, column 40
// diff at line 121, column 52
// popping activation record 0:main13
// local variables: 
// references:
// undefined variables 
