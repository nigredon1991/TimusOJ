#include <stdio.h>

typedef struct {
	int first;
	int second;
} pare;

pare *merge_sort(pare *up, pare *down, int left, int right)
{
	if (left == right) {
		down[left] = up[left];
		return down;
	}
	int middle = (left + right) / 2;
	pare *l_buff = merge_sort(up, down, left, middle);
	pare *r_buff = merge_sort(up, down, middle + 1, right);

	pare *target = l_buff == up ? down : up;

	int l_cur = left, r_cur = middle + 1;
	for (int i = left; i <= right; i++) {
		if (l_cur <= middle && r_cur <= right) {
			if (l_buff[l_cur].second < r_buff[r_cur].second) {
				target[i] = l_buff[l_cur];
				l_cur++;
			} else {
				target[i] = r_buff[r_cur];
				r_cur++;
			}
		} else if (l_cur <= middle) {
			target[i] = l_buff[l_cur];
			l_cur++;
		} else {
			target[i] = r_buff[r_cur];
			r_cur++;
		}
	}
	return target;
}

int main()
{
	int N;
	scanf("%d", &N);
	pare BUF[N + 1];
	pare M[N + 1];
	for (int i = 0; i < N; i++) {
		scanf("%d %d", &M[i].first, &M[i].second);
		/* printf("%d %d\n", M[i].first, M[i].second); */
	}
	pare *answer;
	if (N != 1) {
		answer = merge_sort(M, BUF, 0, N - 1);
	}

	for (int i = N - 1; i >= 0; i--) {
		printf("%d %d\n", answer[i].first, answer[i].second);
	}

	return 0;
}
