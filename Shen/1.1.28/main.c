#include <assert.h>
#include <stdio.h>

int count_decision(int k2, int n) {
  int l = 0, t = 0;
  while (k2 + l * l < n) {
    l = l + 1;
    t = t + 1;
  }
  return t;
}

int main() {
  int n, k = 0, s = 0, t;
  scanf("%d", &n);
  while (k * k < n) {
    t = count_decision(k * k, n);
    k = k + 1;
    s = s + t;
  }

  printf("%d\n", s);
  return 0;
}
