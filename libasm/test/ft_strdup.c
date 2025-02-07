#include "../libasm.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int main(int argc, char** argv)
{
  if (argc != 2)
  {
    printf("ft_strdup wrong input ./tester [src]\n");
    exit(1);
  }

  char *dst1 = strdup(argv[1]);
  printf("strdup src: %s, res: %s\n", argv[1], dst1);

  char *dst = ft_strdup(argv[1]);
  printf("ft_strdup src : %s, res: %s\n", argv[1], dst);
}
