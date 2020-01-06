#include <assert.h>
#include <stdio.h>

int main() {
	int n, k, l;
	scanf("%d", &n);
	if (n == 1) {
		return 0;
	}
	k = n;
	while (k != 1) {
		l = 2;
		while (k % l != 0) {
			l++;
		}
		printf("%d ", l);
		k = k / l;
	}
	printf("\n");
	return 0;
}
