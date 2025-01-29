#include "../libasm.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int main(int argc, char** argv)
{
  /* if (argc != 3) */
  /* { */
  /*   printf("wrong input\n"); */
  /*   exit(1); */
  /* } */
  /**/
  
  char *src = argv[1];
  char *dst = strdup(argv[2]);
  char *res = ft_strcpy(dst, src);
  printf("ft_strcpy src : %s , dst : %s, res: %s\n", src, argv[2], res);

  char *dst1 = strdup(argv[2]);
  char *res1 = strcpy(dst, src);
  printf("strcpy src : %s , dst : %s, res: %s\n", src, argv[2], res1);
}
