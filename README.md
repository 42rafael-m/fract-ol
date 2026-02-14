# 42 Core: Fract-ol

Fractal explorer (Mandelbrot, Julia) using MiniLibX - 42 Core Project.

[![Language: C](https://img.shields.io/badge/language-C-blue.svg)](https://github.com/rms35/42-core-fract-ol)
[![42 School](https://img.shields.io/badge/42-School-black.svg)](https://github.com/42School)

## 🛠 Setup

Requires MiniLibX.

```bash
make
```

## 🚀 Usage

```bash
./fractol [fractal_name]
```

Example: `./fractol mandelbrot` or `./fractol julia 0.285 0.01`

## 🏗 Architecture

### Rendering Logic
- **Iterative Calculation:** For each pixel, the program calculates if the complex number escapes the set within a maximum number of iterations.
- **Color Mapping:** Maps the iteration count to a color gradient for visual representation.
- **Optimization:** Uses double precision floating point numbers for smooth zooming.

### Interactive Features
- **Zoom:** Mouse wheel support for zooming into the fractal.
- **Shifting:** Arrow keys to move the viewport.
- **Color Shifting:** Dynamic color palette swapping.

## ⚖️ Trade-offs

- **MiniLibX vs. SDL:** MiniLibX was used as per the 42 subject constraints. While SDL is more powerful, MLX provides a lower-level understanding of window management and pixel buffers.
- **Double vs. Long Double:** Double precision was chosen for a balance between performance and zoom depth. Long double provides more depth but is significantly slower on some architectures.

---
