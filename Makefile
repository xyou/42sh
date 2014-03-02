NAME = 42sh

FLAG = -Wall -Wextra -Werror

SRCS = 42sh.c

OBJS = $(SRCS:.c=.o)

all:$(NAME)

$(NAME): $(OBJS)
	gcc -o $(NAME) $(OBJS)

%.o:%.c
	gcc $(FLAG) -o $@ -c $< -I includes

clean:
	rm -rf $(OBJS)

fclean:clean
	rm -rf $(NAME)

re: fclean all

