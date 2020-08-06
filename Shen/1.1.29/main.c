#include <assert.h>
#include <stdio.h>

int count_decision(int k2, int n) {
	int l = 0, t = 0;
	while (k2 + l * l < n) {
		l = l + 1;
		t = t + 1;
	}
	return t;
}

int main() {
	int n, k = 0, l = 0, s = 0;
	scanf("%d", &n);
	while (l * l < n) {
		l = l + 1;
	}
	while (l != 0) {
		s += l;
		k++;
		while (l != 0 && k * k + (l - 1) * (l - 1) >= n) {
			l--;
		}
	}
	printf("%d\n", s);
	return 0;
}
