#include "matrix.h"
char*
read_line(FILE *fp)
{
#define DEF_LINE_SZ 1024

	int c;
	size_t len = 0, tam = DEF_LINE_SZ;
	char* str;

	str = malloc(tam);
	if (!str) {
	    	perror("");
		return NULL;
	}

	while (EOF != (c=fgetc(fp)) && c != '\n') {
		str[len++]=c;
		if (len==tam-1) {
			str = realloc(str, tam *= 2);
			if (!str) {
				perror("");
				return NULL;
			}
		}
	}

	if (c != EOF)
		str[len++]='\n';

	str[len++]='\0';
	return str;
}


matrix_t*
create_matrix(size_t rows, size_t cols)
{
	matrix_t * m;

	if (!(m = malloc(sizeof(matrix_t)))) {
		perror("");
		return NULL;
	}

	m->rows = rows;
	m->cols = cols;
	if (!(m->array = malloc(sizeof(double)*rows*cols))) {
		free(m);
		perror("");
		return NULL;
	}
	
	return m;
}

void
destroy_matrix(matrix_t* m)
{
	if (!m) return;
	free(m->array);
	free(m);
}
		
int
print_matrix(FILE* fp, matrix_t* m)
{
	size_t i, j;
	size_t n;
	n = m->rows;
	if (fprintf(fp, "%lu", (unsigned long) m->rows) < 0) {
		perror("");
		return -1;
	}
	for(i=0; i<n; i++)
		for (j=0; j<n; j++) 
			if (fprintf(fp, " %g", m->array[i*n+j]) < 0) {
				perror("");
				return -1;
			}
	if (fprintf(fp, "\n") < 0) {
		perror("");
		return -1;
	}
	return 0;
}