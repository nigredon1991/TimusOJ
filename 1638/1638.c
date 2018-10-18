#include <stdio.h>

int main()
{
	int depth, depth_edge, first_tom, last_tom;
	scanf("%d %d %d %d", &depth, &depth_edge, &first_tom, &last_tom);
	if (first_tom < last_tom) {
		printf("%d\n", (last_tom - first_tom - 1) * depth +
				   depth_edge * 2 * (last_tom - first_tom));
	} else if (first_tom == last_tom) {
		printf("%d\n", depth);
	} else {
		printf("%d\n", (first_tom - last_tom+1) * depth +
				   depth_edge * 2 * (first_tom - last_tom));
	}

	return 0;
}
