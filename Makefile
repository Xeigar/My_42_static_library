NAME = libft.a

SRCS = ft_print_hex.c ft_print_Hex.c ft_print_usgn.c ft_print_void.c \
		ft_print_void.c ft_printf.c ft_prints.c get_next_line_bonus.c \
		get_next_line_utils_bonus.c

OBJT = ${SRCS:c=o}
CC = cc -Wall -Werror -Wextra -I .
MAKE = make -C
LIB_DIR = Libft/
%.o: %.c
	$(CC) -c $<

$(NAME): $(OBJT)
	@echo "Creating libft.a"
	@$(MAKE) $(LIB_DIR) all
	@cp $(LIB_DIR)libft.a $(NAME)
	@echo "Combining get_next_line.a, libft.a and libprintf.a"
	@ar rcs $(NAME) $(OBJT)

all: $(NAME)

clean:
	@echo "Deleting object files and unnecessary libraries"
	@rm -rf $(OBJT)
	@rm -rf get_next_line.a get_next_line/get_next_line.a
	@rm -rf $(LIB_DIR)*.o
	@rm -rf get_next_line/*.o

fclean: clean
	@echo "Deleting libft.a"
	@rm -f $(NAME)
	@rm -rf $(LIB_DIR)libft.a

re: fclean all

.PHONY: all clean fclean re bonus
