#include <assert.h>
#include <stdio.h>

int main() {
	int n, k;
	k = 1;
	scanf("%d", &n);
	printf("0");
	while (k <= n) {
		printf(" %d", k * k);
		k += 1;
	}
	printf("\n");
	return 0;
}
