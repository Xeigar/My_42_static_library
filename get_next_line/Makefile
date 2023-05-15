NAME = get_next_line.a

SRCS = get_next_line_bonus.c get_next_line_utils_bonus.c

FLAGS = -Wall -Werror -Wextra
OBJT = ${SRCS:c=o}

%.o: %.c 
	cc $(FLAGS) -I . -c $<

$(NAME): $(OBJT)
	ar rcs $(NAME) $(OBJT)

all: $(NAME)

clean:
	rm -rf $(OBJT) $(BON_OBJT)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
