#ifndef LIBASM_H
# define LIBASM_H
# include <unistd.h>

size_t		ft_strlen(const char *str);
char		*ft_strcpy(char *dest, const char *src);
ssize_t		ft_write(int fd, const void *str, size_t len);
ssize_t		ft_read(int fd, void *str, size_t len);
char		*ft_strdup(const char *str);
int			ft_strcmp(const char *str1, const char *str2);
#endif
