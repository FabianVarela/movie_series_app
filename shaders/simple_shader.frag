#include <flutter/runtime_effect.glsl>

uniform vec2 uSize;
uniform vec4 uColor;

out vec4 fragColor;

void main() {
    vec2 currentPos = FlutterFragCoord().xy / uSize;
    float multiplier = currentPos.x * currentPos.y;
    fragColor = vec4(uColor.r * multiplier, uColor.g * multiplier, uColor.b * multiplier, uColor.a);
}