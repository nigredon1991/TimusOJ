#include <assert.h>
#include <stdio.h>

int main() {
	int n, k, l;
	scanf("%d", &n);
	if (n < 2) {
		assert("Bad value");
		return 0;
	}
	if (n < 4) {
		printf("Prime");
		return 0;
	}
	k = n;
	l = 2;
	while (k != 1) {
		if (k % l == 0) {
			k = k / l;
			printf("Not Prime\n");
			return 0;
		} else {
			if (l * l > k) {
				printf("Prime");
				return (0);
			} else {
				l++;
			}
		}
	}
	printf("Prime");
	return 0;
}
