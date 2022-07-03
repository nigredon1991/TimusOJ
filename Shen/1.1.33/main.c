#include <assert.h>
#include <stdio.h>

// TODO закончить
int f(int n) {
  if (n == 0) return 0;
  if (n == 1) return 1;
  if (!(n & 1)) {
    return f(n / 2);
  }
  return f(n-1/2) + f(n-1/2);
}
int main() {
  int n, l = 0, r = 1;
  scanf("%d", &n);

  printf("%d\n", k);

  return 0;
}
