NAME = libasm.a

HEADER = libasm.h

SRC = ft_strlen.s \
	  ft_write.s \
	  ft_read.s \
	  ft_strcpy.s

OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ) $(HEADER)
	ar -rc $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.s
	nasm -f macho64 $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
