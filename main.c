#include <stdio.h>
#include <string.h>
#include <unistd.h>

size_t	ft_strlen(const char *s);
char *ft_strcpy(char *dst, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
int 		main()
{
	char str[11] = "0123";
	printf ("str = %s , len =%zu\n", str, strlen((const char *)str));
	printf ("str = %s , len =%zu\n", str, ft_strlen((const char *)str));
	// printf ("str = |%s| ,\n", ft_strcpy("hohahaha", "haha0\0hah\0\0"));
	// printf ("str = |%s| ,\n", strcpy("hohahaaa", "haha0\0hah\0\0"));
	printf ("str = |%d| ,\n", ft_strcmp(str, "0123"));
	printf ("str = |%d| ,\n", strcmp(str, "0123"));
	return (0);
}