#include "../libasm.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int main(int argc, char** argv)
{
  if (argc != 1)
  {
    printf("[ft_read] wrong input\n");
    exit(1);
  }

  ssize_t bytes;
  char buffer[200];
  bytes = ft_read(0, buffer, 200);
  if (bytes < 0)
  {
    perror("ft_read failed");
    return 1;
  }
  buffer[bytes] = '\0';
  printf("input: %s\n", buffer);
  return 0;
}
