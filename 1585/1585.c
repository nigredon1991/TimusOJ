#include <stdio.h>
#include <string.h>

int main()
{
	int N;
	scanf("%d\n", &N);
	int E = 0, M = 0, L = 0;
	char buffer[30];
	char M1 = 'M';
	char E1 = 'E';
	char L1 = 'L';
	/* printf("M:%d, E:%d, L:%d \n", "M", "E", 'L'); */
	for (int i = 0; i < N; i++) {
		fgets(buffer, 25, stdin);
		printf("\nword: %s ", buffer);
		printf("buf0: %c ", buffer[0]);
		printf("buf0: %d ", buffer[0]);
		printf("M:%d, E:%d, L:%d ", M, E, L);
		if (strncmp(buffer, &E1, 1) == 0) {
			E++;
			continue;
		}
		if (strncmp(buffer, &M1, 1) == 0) {
			M++;
			continue;
		}
		L++;
	}
	/* printf("M:%d, E:%d, L:%d ", M, E, L); */
	/* printf("ANSWER: "); */
	if (M > E && M > L)
		printf("Macaroni Penguin\n");
	else if (E > M && E > L)
		printf("Emperor Penguin\n");
	else
		printf("Little Penguin\n");
	return 0;
}
