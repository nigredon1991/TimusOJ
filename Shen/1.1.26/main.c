#include <assert.h>
#include <stdio.h>

void write(int i) {
  assert(i>-1 && i<10);
  printf("%d", i);
  /* fflush(stdout); */
}

int main() {
  int n, base = 1, k;
  scanf("%d", &n);
  while (base * 10 <= n) {
    base = base * 10;
  }
  k = n;
  while (base != 1) {
    /* printf("\nk=%d\nbase=%d\ni=", k, base); */
    write(k / base);
    k = k % base;
    base = base / 10;
  }
  base = 1;
  /* printf("\nk=%d\nbase=%d\ni=", k, base); */
  write(k);
  return 0;
}
