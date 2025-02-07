#include "../libasm.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int main(int argc, char** argv)
{
  if (argc != 2)
  {
    printf("[ft_write] wrong input: ./tester [str]\n");
    exit(1);
  }
  ft_write(1, argv[1], ft_strlen(argv[1]));
}
