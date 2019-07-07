#include <stdio.h>
int main() {
	int n;
	scanf("%d", &n);
	int k = 2, cur = 1, cur_1 = 1, cur_2;
	if (n == 0) {
		printf("%d\n", 0);
		return 0;
	}
	if (n == 1 || n == 2) {
		printf("%d\n", 1);
		return 0;
	}
	while (k < n) {
		k++;
		cur_2 = cur_1;
		cur_1 = cur;
		cur = cur_1 + cur_2;
	}
	printf("%d\n", cur);
	return 0;
}
