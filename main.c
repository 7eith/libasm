/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: user42 <user42@student.42lyon.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/04 15:35:49 by amonteli          #+#    #+#             */
/*   Updated: 2021/01/26 14:42:56 by user42           ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include "libasm.h"

int		main(void)
{
	printf(">> FT_STRLEN\n");
	printf("%lu:%zu\n", strlen("salut"), ft_strlen("salut"));
	printf("%lu:%zu\n", strlen(""), ft_strlen(""));

	char dst[5];
	char *src = "hola";


	printf("\t ft_strcmp\n\n");

	printf(">> Same NULL\n");
	printf("origin  : [%d]\n", strcmp("", ""));
    printf("mine    : [%d]\n\n", ft_strcmp("", ""));

	printf(">> SAME\n");

	printf("origin  : [%d]\n", strcmp("AHAH", "AHAH"));
    printf("mine    : [%d]\n\n", ft_strcmp("AHAH", "AHAH"));

	printf("\n");

	printf(">> AHAH vs AHAh\n");
	printf("origin  : [%d]\n", strcmp("AHAH", "AHAh"));
    printf("mine    : [%d]\n\n", ft_strcmp("AHAH", "AHAh"));

	printf("\n");

	printf(">> aHAH vs AHAH\n");

	printf("origin  : [%d]\n", strcmp("aHAH", "AHAH"));
    printf("mine    : [%d]\n\n", ft_strcmp("aHAH", "AHAH"));

	printf("\n");

	printf(">> 0 vs 3\n");
	printf("origin  : [%d]\n", strcmp("0", "3"));
    printf("mine    : [%d]\n\n", ft_strcmp("0", "3"));

	printf("\n");

	printf(">> oboy vs oBoy\n");
	printf("origin  : [%d]\n", strcmp("Tripouille", "TriPouille"));
    printf("mine    : [%d]\n\n", ft_strcmp("Tripouille", "TriPouille"));

	printf("\n");

	printf(">> oboy vs oBoy\n");
	printf("origin  : [%d]\n", strcmp("Tripouille", "Tripouill"));
    printf("mine    : [%d]\n\n", ft_strcmp("Tripouille", "Tripouill"));

	printf("\n\n\t ft_write\n\n");

	char *test_write = "salu";

	// printf("origin : [%ld]\n", write(1, "test_write", 4));
	// printf("mine   : [%ld]\n", ft_write(1, "test_write", 4));

	// printf("\n");

	// printf("origin : [%ld]\n", write(1, "test_write", -1));
	// printf("mine   : [%ld]\n", ft_write(1, "test_write", -1));

	// printf("\n");

	// printf("origin : [%ld]\n", write(-1, "test_write", -1));
	// printf("mine   : [%ld]\n", ft_write(-1, "test_write", -1));

	int fd;
	char *buf;

	fd = open('./tests/read_me.txt', O_RDONLY);

	read(fd, buf, 1);

	printf("%s\n", buf);
}
