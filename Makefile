# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vbraeke <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/12/01 15:05:28 by vbraeke           #+#    #+#              #
#    Updated: 2016/01/06 16:59:15 by vbraeke          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc

NAME = libft.a

SRC =  ft_putchar.c ft_putstr.c ft_tolower.c ft_toupper.c ft_strlen.c \
	  ft_memset.c ft_strcpy.c ft_isascii.c ft_isalpha.c ft_isdigit.c \
	  ft_isalnum.c ft_isprint.c ft_putchar_fd.c ft_putstr_fd.c \
	  ft_islower.c ft_isupper.c ft_strndup.c \
	  ft_putendl.c ft_putendl_fd.c ft_strdup.c ft_bzero.c ft_putnbr.c \
	  ft_strchr.c ft_strrchr.c ft_atoi.c ft_strdel.c ft_memcpy.c \
	  ft_memalloc.c ft_strclr.c ft_strncpy.c ft_memccpy.c ft_memmove.c \
	  ft_memchr.c ft_memcmp.c ft_strcat.c ft_strncat.c ft_strlcat.c \
	  ft_strstr.c ft_strnstr.c ft_strcmp.c ft_strncmp.c ft_memdel.c \
	  ft_strnew.c ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c \
	  ft_strequ.c ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c \
	  ft_strsplit.c ft_itoa.c ft_putnbr_fd.c ft_lstnew.c ft_lstadd.c ft_lstdelone.c \
	  ft_lstdel.c ft_lstmap.c ft_lstiter.c \

OBJ = $(SRC:.c=.o)

CFLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(OBJ): ./libft.h $(SRC)
	$(CC) $(CFLAGS) -I./ -c $(SRC)

.PHONY: clean fclean re

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all
