#include <stdio.h>

int main()
{
	int M[20];
	int K, N;
	scanf("%d", &N);
	scanf("%d", &K);
	M[0] = 1;
	M[1] = K - 1;
	for (int i = 2; i <= N; i++) {
		M[i] = (K - 1) * (M[i - 1] + M[i - 2]);
		/* printf("%d\n", M[i]); */
	}

	printf("%d\n", M[N]);

	return 0;
}
