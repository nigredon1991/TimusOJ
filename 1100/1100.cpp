#include <algorithm>
#include <cstdio>
#include <vector>

using namespace std;

class parez
{
      public:
	int one;
	int two;
	parez(int init_one, int init_two)
	{
		one = init_one;
		two = init_two;
	}
};
bool lowerMy(const parez first, const parez second)
{
	return first.two > second.two;
}

int main()
{
	int N;
	scanf("%d", &N);
	vector<parez> M(N, parez(0, 0));
	int one, two;
	for (int i = 0; i < N; i++) {
		scanf("%d %d", &one, &two);
		M[i].one = one;
		M[i].two = two;
	}
	stable_sort(M.begin(), M.end(), lowerMy);

	/* if (N != 1) { */
	/* 	sorting(M, N); */
	/* } */

	for (int i = 0; i < N; i++) {
		printf("%d %d\n", M[i].one, M[i].two);
	}

	return 0;
}
