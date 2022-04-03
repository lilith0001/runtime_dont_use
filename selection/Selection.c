#include <stdlib.h>
#include <stdio.h>
#include <time.h>

int main(int argc, char** argv)
{
    //initilaization
    int n = 50000;
    int A[n];
    int min, minIndex;
    srand(time(NULL));


    // populate matrices with random numbers from 0-99
    for(int i=0; i<n; i++)
        A[i] = rand() % 100;     

    
    //start timer
    clock_t start = clock(), diff;

    //sort
    for(int i=0; i<n; i++)
    {
        min = A[i];
        minIndex = i;
        for(int j=i+1; j<n; j++)
        {
            if(A[j] < min)
            {
                min = A[j];
                minIndex = j;
            }		
        }
        
        //swap
        int temp = A[i];
        A[i] = min;
        A[minIndex] = temp;	
    }

    diff = clock() - start;
    int millisec = diff * 1000 / CLOCKS_PER_SEC; 
    printf("%d milliseconds\n", millisec);

    return 0;
}