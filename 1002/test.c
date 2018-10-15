#include <stdio.h>

typedef struct words {
	char c;
	char *next;
} word_t;

int add_elem_words(struct words *head, const char new_char)
{
	word_t *buf = NULL;
	buf = malloc(sizeof(word_t));
	if (buf == NULL)
		return 1;
	buf->c = new_char;
	buf->next = head;
	head = buf;
	return 0;
}
// head -> next
// buf -> head

int main()
{
	char *heap[10];
	char buffer[10];
	struct words *head = NULL;
	head = malloc(sizeof(word_t));
	head->c = '\0';

	int count = 0;
	while (count < 3) {
		scanf("%s\n", &buffer);

		heap[count] = buffer;
	}

	return 0;
}
