#include <stdio.h>
#include "ShowBytes.h"
#include "Arithmetic.h"


int main(int argc, char *argv[]) {

  const char *s = "abcdef";
  showString(s);

  printf("\n");
  int ans = uaddOK(0xefffffff, 0x10000001);
  printf("%d", ans);
  return 0;
}








