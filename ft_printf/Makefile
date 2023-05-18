NAME = ft_printf.a

SRCS = ft_print_hex.c ft_print_Hex.c ft_print_usgn.c ft_print_void.c \
		ft_print_void.c ft_printf.c ft_prints.c

OBJT = ${SRCS:c=o}
CC = cc -Wall -Werror -Wextra -I .
MAKE = make -C
LIB_DIR = Libft/
%.o: %.c
	@$(CC) -c $<

$(NAME): $(OBJT)
	@$(MAKE) $(LIB_DIR) all
	@cp $(LIB_DIR)libft.a $(NAME)
	@ar rcs $(NAME) $(OBJT)

all: $(NAME)

clean:
	@rm -rf $(OBJT)
	@rm -rf $(LIB_DIR)*.o

fclean: clean
	@rm -f $(NAME)
	@rm -rf $(LIB_DIR)libft.a

re: fclean all

.PHONY: all clean fclean re bonus
