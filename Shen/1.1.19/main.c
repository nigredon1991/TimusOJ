#include <assert.h>
#include <stdio.h>

int abs(int n) { return n > 0 ? n : -n; }

int main() {
	int a, b, d, m, n, p, q, r, s, x, y, i, j, k;
	scanf("%d", &a);
	scanf("%d", &b);
	m = a;
	n = b;
	d = 1;

	p = 1;
	q = 0;
	r = 0;
	s = 1;
	i = 1;
	j = 1;

	while (!((n == 0) || (m == 0))) {
		if (m % 2 == 0 && n % 2 == 0) {
			d = d * 2;
			m = m / 2;
			n = n / 2;
			i += 1;
			j += 1;
			/* p = p / 2; */
			/* q = q / 2; */
			/* r = r / 2; */
			/* s = s / 2; */
		} else if (m % 2 == 0 && n % 2 == 1) {
			m = m / 2;
			i += 1;
			/* p = p / 2; */
			/* q = q / 2; */
		} else if (m % 2 == 1 && n % 2 == 0) {
			n = n / 2;
			j += 1;
			/* r = r / 2; */
			/* s = s / 2; */
		} else if (m % 2 == 1 && n % 2 == 1 && m >= n) {
			m = m - n;
			p = p - r;
			q = q - s;
		} else if (m % 2 == 1 && n % 2 == 1 && m <= n) {
			n = n - m;
			r = r - p;
			s = s - q;
		}
	}

	if (m == 0 && n == 0) {
		assert(0);
	}
	if (m == 0) {
		x = r;
		y = s;
		k = d * n;
		i = j;
	} else if (n == 0) {
		k = d * m;
		x = p;
		y = q;
	} else {
		assert(0);
	}
	while (i > 1) {
		if (x % 2 == 0 && y % 2 == 0) {
			x = x / 2;
			y = y / 2;
			i -= 1;
		} else if (abs(x % 2) == 1 || abs(y % 2) == 1) {
			x = x + b;
			y = y - a;
			i -= 1;
		}
	}
	if (x > y) {
		int temp = x;
		x = y;
		y = temp;
	}
	/* printf("TEST: %d %d \n", i); */
	/* printf("%d %d %d\n", k, x, y); */
	printf("%d %d %d\n", k, x, y);
	return 0;
}
