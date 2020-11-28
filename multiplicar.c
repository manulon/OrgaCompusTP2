#include "main.c"

	
	
matrix_t*
matrix_multiply(matrix_t* m1, matrix_t* m2, int bs)
{
	size_t n, en, i, j, k, kk, jj;
	double sum;
	matrix_t* mr;

	n = m1->rows;

	if(!(mr = create_matrix(n,n))) return NULL;

	en = bs*(n/bs);

	for(i=0; i<n; i++)
		for(j=0; j<n; j++) 
			mr->array[i*n+j] = 0.0;

#if 1
	if (1) {
		size_t j;
		size_t dim = 1024*1024*10;
		int *v = malloc(dim*sizeof(int));
		for (j = 0; j < dim; ++j)
			v[j] = -1;
		free(v);
	}
#endif

	for(kk=0; kk<en; kk+=bs) 
		for(jj=0; jj<en; jj+=bs) 
			for(i=0; i<n; i++) 
				for(j=jj; j<jj+bs; j++) {
					sum = mr->array[i*n+j];
					for(k=kk; k<kk+bs; k++) 
						sum += m1->array[i*n+k] * m2->array[k*n+j];  
					mr->array[i*n+j] = sum;
				}
	return mr;
}
