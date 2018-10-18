#include <stdio.h>

int main()
{
	int N1, N2;
	scanf("%d", &N1);
	scanf("%d", &N2);

	if (N1 % 2 == 0 || N2 % 2 == 1) {
		printf("yes\n");
		return 0;
	}
	printf("no\n");
	return 0;
}
