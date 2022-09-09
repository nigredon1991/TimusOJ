#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    puts("Basic allocation example.\n");
    char* a = malloc(0x10);
        strcpy(a, "AAAAAAAAAAAAAAA"); // A * 15
    char* b = malloc(0x12);
    memcpy(b, "BBBBBBBBBBBBBBBBBBBBBBBB", 24); // B * 23
    char* c = malloc(496); // was 0x200
    char* c = malloc(496); // was 0x200
    char* d = malloc(0x500);
    char* e = malloc(0x500);
    char* f = malloc(0x500);
    char* g = malloc(0x500);
    char* h = malloc(0x500);
    free(a);
    free(b);
    free(c);
    free(d);
    // free(e);
    free(f);
    free(h);
    free(g);
    puts("End.\n");
}
