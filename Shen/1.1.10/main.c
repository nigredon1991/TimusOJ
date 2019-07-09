#include <stdio.h>

int *mul_matrix(int *matrix, int degree, int max_degree) {
	/* printf("matrix0\n %d %d \n %d %d \n", matrix[0], matrix[1],
	 * matrix[2], */
	/*        matrix[3]); */
	if (degree >= max_degree) {
		return matrix;
	}
	int x[4];
	if (degree * degree <= max_degree) {
		x[0] = matrix[0] * matrix[0] + matrix[1] * matrix[2];
		x[1] = matrix[0] * matrix[1] + matrix[1] * matrix[3];
		x[2] = matrix[2] * matrix[0] + matrix[3] * matrix[2];
		x[3] = matrix[2] * matrix[1] + matrix[3] * matrix[3];
		for (int i = 0; i < 4; i++) {
			matrix[i] = x[i];
		}
		return mul_matrix(x, degree * degree, max_degree);
	} else {
		x[0] = matrix[0] + matrix[1];
		x[1] = matrix[0];
		x[2] = matrix[2] + matrix[3];
		x[3] = matrix[2];
		for (int i = 0; i < 4; i++) {
			matrix[i] = x[i];
		}
		return mul_matrix(x, degree + 1, max_degree);
	}
}

int main() {
	int n;
	int cur_matrix[] = {2, 1, 1, 1};
	int *answer_matrix;
	scanf("%d", &n);
	if (n == 0) {
		printf("%d\n", 0);
		return 0;
	}
	if (n == 1 || n == 2) {
		printf("%d\n", 1);
		return 0;
	}
	answer_matrix = mul_matrix(cur_matrix, 2, n);
	/* printf("answer\n %d %d \n %d %d \n", answer_matrix[0],
	 * answer_matrix[1], */
	/*        answer_matrix[2], answer_matrix[3]); */
	printf("%d\n", answer_matrix[1]);
	return 0;
}
