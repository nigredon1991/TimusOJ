#include <stdio.h>

int main() {
	int a, b, m, n, u, v, z;
	scanf("%d", &a);
	scanf("%d", &b);
	m = a;
	n = b;
	u = b;
	v = a;

	while (!(m == 0 || n == 0)) {
		if (m >= n) {
			m = m - n;
			v = v + u;
		} else {
			n = n - m;
			u = u + v;
		}
	}
	if (m == 0) {
		z = v;
	} else {
		z = u;
	}

	printf("%d\n", z);
	return 0;
}
