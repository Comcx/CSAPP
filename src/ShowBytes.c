#include "ShowBytes.h"


void showBytes(const BytePointer start, size_t len) {

  size_t i = 0;
  for(i = 0; i < len; i++)
    printf(" %.2x", start[i]);
  
  printf("\n");
}

void showInt(const int x) {
  showBytes((BytePointer) &x, sizeof(int));
}

void showFloat(const float x) {
  showBytes((BytePointer) &x, sizeof(float));
}

void showPointer(const void *x) {
  showBytes((BytePointer) &x, sizeof(void*));
}

void showString(const char *s) {
  showBytes((BytePointer) s, strlen(s));
}


