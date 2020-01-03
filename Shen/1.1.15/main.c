#include <stdio.h>

int main() {
	int a, b, k, m, n, p, q, r, s, x, y;
	scanf("%d", &a);
	scanf("%d", &b);
	m = a;
	n = b;
	p = 1;
	q = 0;
	r = 0;
	s = 1;
	while (!((n == 0) || (m == 0))) {
		if (m >= n) {
			m = m - n;
			p = p - r;
			q = q - s;
		} else {
			n = n - m;
			r = r - p;
			s = s - q;
		}
	}
	/* printf("DEBUG: m=%d, n=%d, %d,%d,%d,%d\n", m, n, p, q, r, s); */
	if (m == 0) {
		k = n;
		x = r;
		y = s;
	} else {
		k = m;
		x = p;
		y = q;
	}

	printf("%d %d %d\n", k, x, y);
	return 0;
}
