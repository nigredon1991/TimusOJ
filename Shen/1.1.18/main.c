#include <assert.h>
#include <stdio.h>

int main() {
	int a, b, d, m, n;
	scanf("%d", &a);
	scanf("%d", &b);
	m = a;
	n = b;
	d = 1;

	while (!((n == 0) || (m == 0))) {
		if (m % 2 == 0 && n % 2 == 0) {
			d = d * 2;
			m = m / 2;
			n = n / 2;
		} else if (m % 2 == 0 && n % 2 == 1) {
			m = m % 2;
		} else if (m % 2 == 1 && n % 2 == 0) {
			n = n % 2;
		} else if (m % 2 == 1 && n % 2 == 1 && m >= n) {
			m = m - n;
		} else if (m % 2 == 1 && n % 2 == 1 && m <= n) {
			n = n - m;
		}
	}

	if (m == 0) {
		printf("%d\n", d * n);
	} else if (n == 0) {
		printf("%d\n", d * m);
	} else {
		assert(0);
	}
	return 0;
}
