NAME = libft.a

MAKE = make -C
LIB_DIR = Libft/
PRT_DIR = ft_printf/
GET_DIR = get_next_line/

$(NAME): get_printf get_get_next
	@echo "Combining get_next_line.a, libft.a and libprintf.a"
	@ar rcs $(NAME) ft_printf.a get_next_line.a

get_printf:
	@echo "Making printf.a"
	@$(MAKE) $(PRT_DIR) all
	@cp $(PRT_DIR)ft_printf.a ft_printf.a

get_get_next:
	@echo "Making get_next_line.a"
	@$(MAKE) $(GET_DIR) all
	@cp $(GET_DIR)get_next_line.a get_next_line.a

all: $(NAME)

clean:
	@echo "Deleting object files and unnecessary libraries"
	@$(MAKE) $(GET_DIR) fclean
	@$(MAKE) $(PRT_DIR) fclean
	@rm -rf ft_printf.a get_next_line.a

fclean: clean
	@echo "Deleting libft.a"
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus get_printf get_get_next
