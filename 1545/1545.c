#include <stdio.h>
#include <stdlib.h>

void print_dict(char dictionary[26][26])
{
	for (int i = 0; i < 26; i++) {
		printf("%c [ ", i + 97);
		for (int j = 0; j < 26; j++) {
			if (dictionary[i][j] == 0)
				printf("0 ");
			else
				printf("%c ", dictionary[i][j]);
		}
		printf("]\n");
	}
}
void add_elem(char *dictionary, char new_elem)
{
	for (int i = 0; i < 26; i++) {
		if (dictionary[i] == 0) {
			dictionary[i] = new_elem;
			break;
		}
	}
}

int main()
{
	int number_ieroglif = 0;
	scanf("%d", &number_ieroglif);
	char dictionary[26][26];
	for (int i = 0; i < 26; i++) {
		for (int j = 0; j < 26; j++)
			dictionary[i][j] = 0;
	}
	char buff[2];
	for (int i = 0; i < number_ieroglif; i++) {
		scanf("%s\n", &buff);
		add_elem(dictionary[buff[0] - 97], buff[1]);
	}
	/* print_dict(dictionary); */
	scanf("%s\n", &buff);
	for (int i = 0; i < 26; i++) {
		if (dictionary[buff[0] - 97][i] != 0)
			printf("%c%c\n", buff[0], dictionary[buff[0] - 97][i]);
	}
	return 0;
}

/* scanf("%s\n", &telefon_number); */
// printf("%d\n", a + b);
