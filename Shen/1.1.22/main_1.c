#include <assert.h>
#include <stdio.h>

int main() {
	int n, k, l;
	scanf("%d", &n);
	if (n == 1) {
		return 0;
	}
	k = n;
	l = 2;
	while (k != 1) {
		if (k % l == 0) {
			k = k / l;
			printf("%d ", l);
		} else {
			l++;
		}
	}
	printf("\n");
	return 0;
}
