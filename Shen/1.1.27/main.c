#include <assert.h>
#include <stdio.h>

void write(int i) {
	assert(i > -1 && i < 10);
	printf("%d", i);
	/* fflush(stdout); */
}

int main() {
	int n, k;
	scanf("%d", &n);
	k = n;
	while (k != 0) {
		write(k % 10);
		k = k / 10;
	}
	return 0;
}
