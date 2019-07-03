#include <stdio.h>
int main() {
	int k = 0, b = 1;
	int a, n;
	scanf("%d", &a);
	scanf("%d", &n);
	while (k < n) {
		k += 1;
		b *= a;
	}
	printf("%d\n", b);
	return 0;
}
