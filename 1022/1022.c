#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct graph *Graph;
struct graph {
	int num_vertices;
	int num_edges;
	int *adjacency_list[];
};

Graph graph_create(int n) {
	Graph g;
	g = malloc(sizeof(struct graph *) + sizeof(int *) * n);
	assert(g);
	g->num_vertices = n;
	for (int i = 0; i < n; i++) {
		g->adjacency_list[i] = malloc(sizeof(int) * n);
		assert(g->adjacency_list[i]);
		g->adjacency_list[i][0] = -1;
	}
	return g;
}

void graph_add_edge(Graph g, int u, int v) { // u -> v
	if (v == -1) {
		return;
	}
	assert(u >= 0);
	assert(u < g->num_vertices);
	assert(v >= 0);
	assert(v < g->num_vertices);
	int buffer = 0;

	for (int i = 0; i < g->num_vertices; i++) {
		if (g->adjacency_list[u][i] == -1) {
			g->adjacency_list[u][i] = v;
			g->adjacency_list[u][i + 1] = -1;
			break;

		} else if (g->adjacency_list[u][i] == v) {
			/* printf("Existed value: %d", v); */
			break;

		} else if (g->adjacency_list[u][i] > v) {
			for (int j = i; j < g->num_vertices; j++) {
				buffer = g->adjacency_list[u][j];
				g->adjacency_list[u][j] = v;
				v = buffer;
				if (buffer == -1) {
					g->adjacency_list[u][j + 1] = -1;
					break;
				}
			}
			/* g->adjacency_list[u][i + 1] =
			 * g->adjacency_list[u][i]; */
			/* g->adjacency_list[u][i] = v; */
			break;
		}
	}
}

void graph_del_edge(Graph g, int u, int v) {
	assert(u >= 0);
	assert(u < g->num_vertices);
	assert(v >= 0);
	assert(v < g->num_vertices);
	int buffer = 0;

	for (int i = 0; i < g->num_vertices; i++) {
		if (g->adjacency_list[u][i] == -1) {
			/* printf("Delete not existed value: %d", v); */
			break;

		} else if (g->adjacency_list[u][i] == v) {
			for (int j = i; j < g->num_vertices; j++) {
				buffer = g->adjacency_list[u][j];
				g->adjacency_list[u][j] = v;
				v = buffer;
				if (buffer == -1) {
					g->adjacency_list[u][j + 1] = -1;
					break;
				}
			}
			break;

		} else if (g->adjacency_list[u][i] > v) {
			/* printf("Delete not existed value: %d", v); */
			break;
		}
	}
}

void graph_del_for_vertic_edge(Graph g, int vert) {
	// Ничего больше не удаляем, потому что в эту вершину никто не ведёт
	g->adjacency_list[vert] = NULL;
}

int find_vert_no_parents(Graph g) {
	int pare[g->num_vertices];
	for (int i = 0; i < g->num_vertices; i++) {
		if (g->adjacency_list[i] == NULL) {
			pare[i] = -1;
			continue;
		} else {
			pare[i] = 0;
		}
	}
	for (int i = 0; i < g->num_vertices; i++) {
		if (pare[i] == -1) {
			continue;
		}
		for (int j = 0;
		     g->adjacency_list[i][j] != -1 && j < g->num_vertices;
		     j++) {
			pare[g->adjacency_list[i][j]]++;
		}
	}
	/* printf("\n"); */
	for (int i = 0; i < g->num_vertices; i++) {
		/* printf("pare[%d]: %d\n", i, pare[i]); */
		if (pare[i] == 0) {
			/* printf("Новая вершина для удаления: %d\n", i); */
			return i;
		}
	}
	return 0;
}

int main() {
#ifndef ONLINE_JUDGE
	freopen("input", "rt", stdin);
#endif
	int N, buf;
	scanf("%d", &N);
	Graph graph = graph_create(N);
	for (int i = 0; i < N; i++) {
		buf = 1;
		for (int j = 0; buf != 0; j++) {
			scanf("%d", &buf);
			graph_add_edge(graph, i, buf - 1);
		}
	}
	int next_delete = 0;
	for (int i = 0; i < graph->num_vertices; i++) {
		next_delete = find_vert_no_parents(graph);
		printf("%d ", next_delete + 1);
		graph_del_for_vertic_edge(graph, next_delete);
	}
	return 0;
}
