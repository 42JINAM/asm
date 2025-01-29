#include "../libasm.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int main(int argc, char** argv)
{
  if (argc != 3)
  {
    printf("wrong input\n");
    exit(1);
  }
  
  char *src = argv[1];
  char *dst = strdup(argv[2]);
  int res = ft_strcmp(dst, src);
  printf("ft_strcmp src: %s, dst: %s, res: %d\n", src, dst, res);

  int res1 = strcmp(dst, src);
  printf("strcmp src: %s, dst: %s, res: %d\n", src, dst, res1);
}
