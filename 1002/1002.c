#include <stdio.h>
#include <stdlib.h>

struct words {
	char word[100];
	struct words *next;
} word_t;

int str_cpy(const char *input, char *output)
{
	int i = 0;
	for (; i < 1000; i++) {
		output[i] = input[i];
		if (input[i] == '\0') {
			break;
		}
	}
	if (i == 1000) {
		return 1;
	}
	return 0;
}

int find_number_in_str(const char *string, const char ch)
{
	int i = 0;
	while (string[i] != ch || i > 1000)
		i++;
	return i;
}

int main()
{
	char telefon_number[100];
	char str[100];
	int answer_number_of_words=999;
	char current_answer[100];
	struct words *heap[] = {
	    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	};
	int count;
	char table[] = "oqzij0abcdefgh0kl0mn0prstuvwxyoqz";
	while (1) {
		scanf("%s\n", &telefon_number);
		if (telefon_number[0] == '-' && telefon_number[1] == '1')
			return 0;
		scanf("%d", &count);
		for (int i = 0; i < count; i++) {
			scanf("%s", &str);
			if (str[0] == '\0')
				continue;
			struct words *head = NULL;
			head = malloc(sizeof(word_t));
			if (head == NULL)
				return 1;
			if (str_cpy(head->word, str) != 0)
				return 1;
			int head_number = find_number_in_str(table, str[0]);
			if (heap[head_number] == NULL)
				heap[head_number] = head;
			else {
				head->next = heap[head_number];
				heap[head_number] = head;
			}

			for (int j = 0; telefon_number[j] != '\0' || j >= 99;
			     j++) {
				printf("j = %d\n", j);
				if (str[j] == '\0') {
					printf("%s\n", str);
					break;
				}
				int lala = telefon_number[j] - 48;
				if (table[lala * 3] == str[j]) {
					continue;
				}
				if (table[lala * 3 + 1] == str[j]) {
					continue;
				}
				if (table[lala * 3 + 2] == str[j]) {
					continue;
				}
				break;
			}

			// if (char_in_str_valid(str[j], telefon_number[j])) {
		}
	}
	return 0;
}

// printf("%d\n", a + b);
