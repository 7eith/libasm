# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amonteli <amonteli@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/06 11:34:10 by amonteli          #+#    #+#              #
#    Updated: 2021/01/08 11:20:55 by amonteli         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME			=		libasm.a

CC				=		nasm

FLAGS 			= 		-f elf64

SRCS			=		strlen.s \

OBJS			= 		$(addprefix srcs/ft_, $(SRCS:.s=.o))

# Rule(s)

all			: $(NAME)

$(NAME)		: $(OBJS)
		ar rcus $(NAME) $(OBJS)

%.o: %.s
		$(CC) $(FLAGS) $< -o $@

clean		:
		@/bin/rm -f $(OBJS)

fclean		:		clean
		@/bin/rm -f $(NAME)

re			:		fclean all
