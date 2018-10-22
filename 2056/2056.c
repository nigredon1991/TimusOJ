#include <stdio.h>

int main()
{
	int N, rating, sum = 0, have_three = 0;
	scanf("%d", &N);
	for (int i = 0; i < N; i++) {
		scanf("%d", &rating);
		if (rating == 3) {
			have_three = 1;
		}
		sum += rating;
	}
	float average = (float)sum / N;
	printf("%f\n", average);
	if (have_three == 1) {
		printf("None\n");
	} else if (average == 5) {
		printf("Named\n");
	} else if (average >= 4.5) {
		printf("High\n");
	} else {
		printf("Common\n");
	}

	return 0;
}
