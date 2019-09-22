#include <stdio.h>

int main() {
	int a, b, k;
	scanf("%d", &a);
	scanf("%d", &b);

	if (a < b) {
		k = a;
		if (k == 0) {
			printf("%d\n", b);
			return 0;
		}
	} else {
		k = b;
		if (k == 0) {
			printf("%d\n", a);
			return 0;
		}
	}
	while (!(a % k == 0) && (b % k == 0)) {
		k = k - 1;
	}
	printf("%d\n", k);
	return 0;
}
