// Use the GLSL ES 1.00 version directive
#version 100

// Precision qualifier
precision mediump float;

// Varying variables (input from vertex shader)
varying vec2 vTexcoord;

// Sampler for the texture
uniform sampler2D texture0;

void main() {
    // Output the color of the texture at the given coordinates
    gl_FragColor = texture2D(texture0, vTexcoord);
}
