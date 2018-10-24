#include <stdio.h>

int main()
{
	long long K, N;
	scanf("%lld", &N);
	scanf("%lld", &K);
	if (N == 1) {
		printf("%d\n", 0);
		return 0;
	}

	long long sum = 1, pre = 1, cur = 1, buf, num = 0;
	while (cur < K && sum < N) {
		/* printf("sum: %lld, pre: %lld, cur: %lld\n", sum, pre, cur); */
		num++;
		sum += cur;
		buf = cur;
		cur *= 2;
		if (cur >= K)
			cur = K;
		pre = buf;
	}
	if (sum <= N) {
		if ((N - sum) % K)
			num += (N - sum) / K + 1;
		else
			num += (N - sum) / K;
	}
	/* printf("sum: %lld, pre: %lld, cur: %lld\n", sum, pre, cur); */
	printf("%lld\n", num);
	return 0;
}
