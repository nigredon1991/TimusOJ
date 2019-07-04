#include <stdio.h>
int main() {
	int a, n;
	scanf("%d", &a);
	scanf("%d", &n);
	int k = n, b = 1, c = a;
	while (k > 0) {
		if (k % 2 == 0) {
			k = k / 2;
			c = c * c;
		} else {
			k = k - 1;
			b = b * c;
		}
	}
	printf("%d\n", b);
	return 0;
}
