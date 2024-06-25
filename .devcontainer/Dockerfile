FROM mcr.microsoft.com/devcontainers/cpp:0-ubuntu-20.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    cmake \
    git \
    build-essential \
    libglfw3-dev \
    libopengl0 \
    libxinerama-dev \
    libxcursor-dev \
    libxi-dev \
    libxrandr-dev \
    libxxf86vm-dev \
    libasound2-dev \
    libpulse-dev \
    libudev-dev \
    libxkbcommon-dev  # Add this line to install xkbcommon

# Install emscripten
RUN git clone https://github.com/emscripten-core/emsdk.git /emsdk && \
    cd /emsdk && \
    ./emsdk install latest && \
    ./emsdk activate latest && \
    echo "source /emsdk/emsdk_env.sh" >> ~/.bashrc

# Install raylib
RUN git clone https://github.com/raysan5/raylib.git /raylib && \
    mkdir -p /raylib/build && \
    cd /raylib/build && \
    cmake .. && \
    make && \
    make install
