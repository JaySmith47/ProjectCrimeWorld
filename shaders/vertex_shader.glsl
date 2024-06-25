// Use the GLSL ES 1.00 version directive
#version 100

// Attribute variables (input to vertex shader)
attribute vec3 position;
attribute vec2 texcoord;

// Varying variables (output from vertex shader, input to fragment shader)
varying vec2 vTexcoord;

void main() {
    // Pass the texture coordinates to the fragment shader
    vTexcoord = texcoord;

    // Set the position of the current vertex
    gl_Position = vec4(position, 1.0);
}
