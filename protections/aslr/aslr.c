#include <stdio.h>
#include <stdlib.h>

int init_g = 0;
int g;

int main(void)
{
	int a = 1;
	void *heap = malloc(10);

	printf("main            : %p\n", &main);
	printf("init global     : %p\n", &init_g);
	printf("not init global	: %p\n", &g);
	printf("heap            : %p\n", heap);
	printf("stack           : %p\n", &a);
	printf("printf          : %p\n", &printf);
	
	return 0;
}
