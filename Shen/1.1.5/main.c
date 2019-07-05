#include <stdio.h>
int main() {
	int a, b;
	int k = 0, c = 0;
	scanf("%d", &a);
	scanf("%d", &b);
	while (k != b) {
		k += 1;
		c += a;
	}
	printf("%d\n", c);
	return 0;
}
