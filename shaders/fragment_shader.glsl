#version 100

precision mediump float;

varying vec2 vTexcoord;
uniform sampler2D texture0;

void main() {
    gl_FragColor = texture2D(texture0, vTexcoord);
}
