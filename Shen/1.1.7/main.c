#include <stdio.h>
int main() {
	int a, d;
	scanf("%d", &a);
	scanf("%d", &d);
	int r = a, q = 0;
	while (r >= d) {
		r = r - d;
		q = q + 1;
	}
	printf("%d %d\n", q, r);
	return 0;
}
