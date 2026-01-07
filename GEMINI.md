# Fract-ol Project Context

## Project Overview
**Fract-ol** is a fractal exploration program developed in C. It allows users to render and interact with different fractal sets (Mandelbrot and Julia variants) using the **MiniLibX** graphical library. The project demonstrates proficiency in low-level graphics programming, complex number arithmetic, and event handling in a Unix-like environment.

## Architecture & Technologies
*   **Language:** C (C99 standard).
*   **Graphics Engine:** `minilibx-linux` (MiniLibX), interfacing with X11.
*   **Core Logic:**
    *   `fractol.c`: Entry point, initialization, and main event loop.
    *   `fractol_utils.c`: Rendering logic (Mandelbrot/Julia iterations) and argument parsing.
    *   `fractol_utils1.c`: Event handlers (keyboard, mouse/zoom) and window management.
*   **Utilities:** `libft` (custom C standard library implementation) used for data manipulation and helper functions.
*   **External Dependencies:**
    *   `libX11`, `libXext` (X Window System client libraries).
    *   `libm` (Math library).
    *   `libz` (Compression library).

## Build Instructions
The project uses a `Makefile` to manage the build process.

*   **Build Project:**
    ```bash
    make
    ```
    This compiles `libft` first, then compiles the `fractol` source files and links them with MiniLibX and system libraries.

*   **Clean Object Files:**
    ```bash
    make clean
    ```

*   **Full Clean (Objects + Executable):**
    ```bash
    make fclean
    ```

*   **Rebuild:**
    ```bash
    make re
    ```

## Usage
The executable `fractol` requires arguments to specify which fractal to render and optional configuration parameters.

### Command Format
```bash
./fractol <fractal_type> [options]
```

### Fractal Types
*   `mandelbrot`: Renders the Mandelbrot set.
*   `julia1`: Renders a variant of the Julia set.
*   `julia2`: Renders another variant of the Julia set.

### Options
Based on the code analysis, the program accepts additional parameters like `WIDTH`, `LENGTH`, and `I` (iterations), though the exact syntax should be verified by running the program without arguments to see the help message.

**Example:**
```bash
./fractol mandelbrot
```

## Key Files
*   `fractol.c`: Main program logic.
*   `fractol.h`: Header file containing `t_data` and `t_complex` structs, macros, and function prototypes.
*   `fractol_utils.c`: Fractal generation algorithms and CLI parsing.
*   `fractol_utils1.c`: Event handling (zoom, window close, keyboard input).
*   `Makefile`: Build rules.
*   `libft/`: Directory containing the custom standard library.
*   `minilibx-linux/`: Directory containing the graphics library.
