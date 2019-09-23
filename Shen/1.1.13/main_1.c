#include <stdio.h>

int main() {
	int a, b, k, m, n;
	scanf("%d", &a);
	scanf("%d", &b);
	m = a;
	n = b;
	while (!((n == 0) || (m == 0))) {
		if (m >= n) {
			m = m - n;
		} else {
			n = n - m;
		}
	}
	if (m == 0) {
		k = n;
	} else {
		k = m;
	}

	printf("%d\n", k);
	return 0;
}
