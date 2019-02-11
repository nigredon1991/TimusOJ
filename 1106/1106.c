#include <stdio.h>
#include <stdlib.h>

typedef struct queue *Queue;
struct queue {
	int front;
	int rear;
	int itemCount;
	int max_count;
	int elements[];
};

Queue create_queue(int count_buffer) {
	Queue queue;
	queue = malloc(sizeof(struct queue) + sizeof(int[count_buffer]));
	queue->front = 0;
	queue->rear = -1;
	queue->itemCount = 0;
	queue->max_count = count_buffer;
	return queue;
}

void remove_queue(Queue queue) { free(queue); }

int is_Empty(Queue queue) {
	if (queue->itemCount == 0)
		return 1;
	return 0;
}
int is_Full(Queue queue) {
	if (queue->max_count == queue->itemCount)
		return 1;
	return 0;
}

void push(Queue q, int elem) {
	if (q->rear == q->max_count - 1)
		q->rear = -1;
	q->elements[++q->rear] = elem;
	(q->itemCount)++;
}

int front(Queue q) { return q->elements[q->rear]; }

int pop(Queue q) {
	q->itemCount--;
	int elem = q->elements[q->front];
	if (q->front == q->max_count - 1)
		q->front = 0;
	q->front++;
	return elem;
}

void bfs(int start, int *g[], int used[], int d[], int N) {
	Queue queue = create_queue(N);
	int s = start;
	push(queue, s);
	used[s] = 1;
	while (!is_Empty(queue)) {
		int v = pop(queue);
		for (int i = 0; g[v][i] != -1; i++) {
			int to = g[v][i];
			if (!used[to]) {
				used[to] = 1;
				push(queue, to);
				d[to] = d[v] + 1;
			}
		}
	}
	remove_queue(queue);
}

int main() {

#ifndef ONLINE_JUDGE
	freopen("input", "rt", stdin);
#endif
	/* Queue q = create_queue(10); */
	/* push(q, 1); */
	/* printf("%d\n", pop(q)); */
	/* push(q, 2); */
	/* printf("%d\n", pop(q)); */
	/* push(q, 3); */
	/* printf("%d\n", pop(q)); */
	/* push(q, 3); */
	/* push(q, 2); */
	/* push(q, 1); */
	/* printf("%d\n", pop(q)); */
	/* printf("%d\n", pop(q)); */
	/* printf("%d\n", pop(q)); */
	/* return 0; */

	int N, buf;
	scanf("%d", &N);
	int *Graph[N];
	for (int i = 0; i < N; i++) {
		Graph[i] = malloc(sizeof(int) * N);
	}
	int n = 0;
	for (int i = 0; i < N; i++) {
		for (int j = 0;; j++) {
			scanf("%d", &buf);
			Graph[i][j] = buf - 1;
			if (buf == 0) {
				break;
				n += j;
			}
		}
	}
	// inicialization
	int used[N * N];
	int d[N * N];
	for (int i = 0; i < N * N; i++) {
		used[i] = 0;
		d[i] = 0;
	}
	for (int start = 0; start < N; start++)
		if (!used[start])
			bfs(start, Graph, used, d, N);

	int ans[N];
	int num_ans = 0;
	for (int i = 0; i < N; i++) {
		if (d[i] % 2 == 0) {
			ans[num_ans] = i + 1;
			num_ans++;
		}
	}
	/* printf("%d ", 1); */

	printf("%d\n", num_ans);

	for (int i = 0; i < num_ans; i++) {

		printf("%d ", ans[i]);
	}
	for (int i = 0; i < N; i++) {
		free(Graph[i]);
	}

	return 0;
}
