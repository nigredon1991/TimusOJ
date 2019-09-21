#include <stdio.h>

int main() {
	int n;
	double last = 1;
	double sum = 0;
	scanf("%d", &n);
	if (n == 0) {
		printf("%4.3f\n", last);
		return 0;
	}
	for (int i = 1; i <= n; i++) {
		last = last / i;
		sum += last;
	}
	printf("%4.3f\n", sum);
	return 0;
}
