#include <stdio.h>

int hash_map(const char *str)
{
	unsigned long hash = 6489;
	int c;

	while (c = *str++) {
		if (c == 0)
			break;
		hash = ((hash << 4) + hash) + c; /* hash * 33 + c */
	}

	return (hash % 100000);
}

int hash_map2(const char *str)
{
	unsigned long hash = 5381;
	int c;

	while (c = *str++) {
		if (c == 0)
			break;
		hash = ((hash << 5) + hash) + c; /* hash * 33 + c */
	}

	return (hash % 100000);
}

int main()
{
	int N;
	scanf("%d", &N);
	int hash[100000];
	int hash2[100000];
	char buffer[50];
	int calc = 0;
	for (int i = 0; i <= N; i++) {
		/* gets(buffer); */
		/* scanf("%[^\n]s", buffer); */
		/* scanf("^%s$", &buffer); */
		fgets(buffer, 40, stdin);
		printf("%s\n", buffer);
		if (hash[hash_map(buffer)] == 'B' &&
		    hash2[hash_map2(buffer)] == 'B')
			calc++;
		else
			hash[hash_map(buffer)] = 'B';
		hash2[hash_map2(buffer)] = 'B';
		/* printf("%d\n", hash_map(buffer)); */
	}
	printf("%d\n", calc);

	return 0;
}
