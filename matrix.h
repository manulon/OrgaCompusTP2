#ifndef MATRIX_H
#define MATRIX_H
#include <stdlib.h>
#include <stdio.h>

typedef struct matrix {
		size_t rows;
			size_t cols;
				double* array;
} matrix_t;

/* prototypes */
char* read_line(FILE*);

matrix_t* matrix_multiply(matrix_t* m1, matrix_t* m2, int bs);

matrix_t* create_matrix(size_t rows, size_t cols);

void destroy_matrix(matrix_t* m);

int print_matrix(FILE* fp, matrix_t* m);

#endif

