#include <assert.h>
#include <stdio.h>

int main() {
	int n, k, k_square;
	k = 0;
	k_square = 0;
	scanf("%d", &n);
	printf("0");
	while (k < n) {
		k_square = k_square + k;
		k += 1;
		k_square = k_square + k;
		printf(" %d", k_square);
	}
	printf("\n");
	return 0;
}
