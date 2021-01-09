/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   main.c                                           .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: amonteli <amontelimart@gmail.com>          +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2021/01/04 15:35:49 by amonteli     #+#   ##    ##    #+#       */
/*   Updated: 2021/01/09 14:11:39 by amonteli    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */
#include <stdio.h>
#include <string.h>
#include "libasm.h"

int		main(void)
{
	printf(">> FT_STRLEN\n");
	printf("%lu:%zu\n", strlen("salut"), ft_strlen("salut"));
	printf("%lu:%zu\n", strlen(""), ft_strlen(""));

	char dst[5];
	char *src = "hola";

	printf("origin  : [%s]\n", strcpy(dst, src));
    printf("mine    : [%s]\n", ft_strcpy(dst, src));

	printf("origin  : [%s]\n", strcpy(dst, ""));
    printf("mine    : [%s]\n", ft_strcpy(dst, ""));

	
}
