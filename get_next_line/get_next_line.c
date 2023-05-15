/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmoutinh <tmoutinh@student.42porto.com     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/04 11:10:09 by tmoutinh          #+#    #+#             */
/*   Updated: 2023/05/08 17:21:42 by tmoutinh         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"

char	*get_txt(int fd, char *txt)
{
	char	*temp;
	int		i;

	temp = (char *)malloc(sizeof(*temp) * (BUFFER_SIZE + 1));
	if (!temp)
		return (NULL);
	i = 1;
	while (!find_nl(txt) && i != 0)
	{
		i = read(fd, temp, BUFFER_SIZE);
		if (i == -1)
		{
			free(txt);
			free(temp);
			return (NULL);
		}
		temp[i] = 0;
		txt = strjoiner(txt, temp);
	}
	free(temp);
	return (txt);
}

char	*get_next_line(int fd)
{
	static char	*txt;
	char		*line;

	if (fd < 0 || BUFFER_SIZE <= 0)
		return (NULL);
	txt = get_txt(fd, txt);
	if (!txt)
		return (NULL);
	line = extraction(txt);
	txt = removal(txt);
	return (line);
}
