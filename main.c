/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: amonteli <amonteli@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/04 15:35:49 by amonteli          #+#    #+#             */
/*   Updated: 2021/01/06 13:05:38 by amonteli         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include "libasm.h"

int		main(void)
{
	printf(">> FT_STRLEN\n");
	printf("%lu:%zu\n", strlen("salut"), ft_strlen("salut"));
	printf("%lu:%zu\n", strlen(""), ft_strlen(""));


}
