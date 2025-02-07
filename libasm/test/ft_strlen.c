#include "../libasm.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int main(int argc, char** argv)
{
  if (argc != 2)
  {
    printf("ft_strlen wrong input: ./tester [src]\n");
    exit(1);
  }
  printf("input: %s, ft_strlen: %ld, strlen: %ld\n", argv[1], ft_strlen(argv[1]), strlen(argv[1]));

}
