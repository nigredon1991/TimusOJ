#include <assert.h>
#include <stdio.h>

int main() {
	int n, k, l = 0, r = 1;
	scanf("%d %d", &n, &k);
	while (l != k) {
		printf("%d", 10 * r / n);
		r = 10 * r % n;
		l = l + 1;
	}

	return 0;
}
