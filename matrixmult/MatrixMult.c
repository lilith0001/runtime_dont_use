#include <stdlib.h>
#include <stdio.h>
#include <time.h>

int main(int argc, char** argv)
{
    //initilaization
    int n = 800;
		
    int A[n][n];
    int B[n][n];
    int C[n][n];

    srand(time(NULL));

    // populate matrices with random numbers from 0-99
    for(int i=0; i<n; i++)
            for(int j=0; j<n; j++)
                A[i][j] = rand() % 99;     
			
    for(int i=0; i<n; i++)
        for(int j=0; j<n; j++)
            B[i][j] = rand() % 99;

    // fill matrix c with zeroes
    for(int i=0; i<n; i++)
        for(int j=0; j<n; j++)
            C[i][j] = 0;


    clock_t start = clock(), diff;
    
    // perform the multiplication
    for(int i=0; i<n; i++)
    {
        for(int j=0; j<n; j++)
        {
            for(int k=0; k<n; k++)
                C[i][j] += A[i][k]*B[k][j];
        }
    }

    diff = clock() - start;
    int millisec = diff * 1000 / CLOCKS_PER_SEC; 

    printf("%d milliseconds\n", millisec);
    return 0;
}

