# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amonteli <amonteli@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/06 11:34:10 by amonteli          #+#    #+#              #
#    Updated: 2021/01/10 14:55:17 by amonteli         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME			=		libasm.a

CC				=		nasm

FLAGS 			= 		-f elf64

SRCS			=		strlen.s strcpy.s strcmp.s \

OBJS			= 		$(addprefix srcs/ft_, $(SRCS:.s=.o))

# Rule(s)

all			: $(NAME)

$(NAME)		: $(OBJS)
		ar rcs $(NAME) $(OBJS)

%.o: %.s
		$(CC) $(FLAGS) $< -o $@

clean		:
		@/bin/rm -f $(OBJS)

fclean		:		clean
		@/bin/rm -f $(NAME)

re			:		fclean all

test		:		re
		gcc main.c libasm.a
		./a.out
