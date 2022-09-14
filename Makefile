NAME = minitalk.a

LIBFT = libft/libft.a

SOURSES	= $(wildcard *.c)

OBJECTS = $(SOURSES:.c=.o)

CC	= gcc

FLAGS	= -c -Wall -Werror -Wextra

$(NAME): $(OBJECTS)
		$(MAKE) -C libft
		cp libft/libft.a $(NAME)
		$(CC) $(FLAGS) $(SOURSES)
		ar -rcs $(NAME) $(OBJECTS)

all:	$(NAME)

clean:
		$(MAKE) clean -C libft
		rm -rf $(OBJECTS)

fclean:	clean
		$(MAKE) fclean -C libft
		rm -rf $(OBJECTS)

re:	fclean all