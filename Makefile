NAME = fractol
LIBFT_A = libft/libft.a
SRC = fractol.c fractol_utils.c fractol_utils1.c
OBJ = $(SRC:.c=.o)
CFLAGS +=  -Ilibft -Wno-incompatible-pointer-types -O3 -march=native -ffast-math -funroll-loops -fopenmp

all: $(NAME)

$(NAME): $(LIBFT_A) $(OBJ)
	cc $(CFLAGS) $(OBJ) $(LIBFT_A) -Lminilibx-linux -lmlx_Linux -lXext -lX11 -lm -lz -fopenmp -o $(NAME)

$(LIBFT_A):
	$(MAKE) bonus -C libft

%.o: %.c
	cc $(CFLAGS) -I/usr/include -Iminilibx-linux -O3 -c $< -o $@

clean:
	rm  -f $(OBJ)
	$(MAKE) clean -C libft

fclean: clean
	rm -f $(NAME)
	$(MAKE) fclean -C libft

re: fclean all

.PHONY: all clean fclean re NAME