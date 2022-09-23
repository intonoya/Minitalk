SOURCES = ft_server.c ft_client.c

OBJECTS = $(SOURCES:.c=.o)

CC = gcc

CFLAGS = -Wall -Wextra -Werror

all: ft_server ft_client

bonus: ft_server ft_client

ft_server: ft_server.o libft
	$(CC) -o $@ $< -Llibft -lft

ft_client: ft_client.o libft
	$(CC) -o $@ $< -Llibft -lft

%.o: %.c
	$(CC) -c $(CFLAGS) $?

libft:
	make -C libft

clean:
	rm -f $(OBJECTS)
	make -C libft clean
	
fclean: clean
	rm -f ft_server ft_client libft/libft.a

re: fclean all

.PHONY: all bonus libft clean fclean re
