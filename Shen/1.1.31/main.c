#include <assert.h>
#include <stdio.h>

// TODO Надо написать тесты, возможно поправить
int main() {
  int n, l = 0, r = 1;
  scanf("%d", &n);
  while (l != n + 1) {
    r = (10 * r) % n;
    l = l + 1;
  }
  int c = r;
  r = (10 * r) % n;
  int k = 1;
  while (r != c) {
    r = (10 * r) % n;
    k = k + 1;
  }
  printf("%d\n", r);

  return 0;
}
