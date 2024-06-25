#include "raylib/src/raylib.h"

int main() {
    // Initialization
    const int screenWidth = 800;
    const int screenHeight = 450;

    InitWindow(screenWidth, screenHeight, "raylib [core] example - basic window");

    Shader shader = LoadShader("shaders/vertex_shader.glsl", "shaders/fragment_shader.glsl");

    // Check if the shader loaded correctly
    if (shader.id == 0) {
        TraceLog(LOG_ERROR, "Failed to load shader!");
        return -1; // Exit if shader failed to load
    }

    // Main game loop
    while (!WindowShouldClose()) {
        BeginDrawing();
        ClearBackground(RAYWHITE);

        BeginShaderMode(shader);
        // Draw your objects here
        DrawText("Congrats! You created your first window!", 190, 200, 20, LIGHTGRAY);
        EndShaderMode();

        EndDrawing();
    }

    // De-Initialization
    UnloadShader(shader);
    CloseWindow();

    return 0;
}
