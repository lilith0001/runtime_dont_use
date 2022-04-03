#include <stdlib.h>
#include <stdio.h>
#include <time.h>

int main(int argc, char** argv)
{
	//srand(time(NULL));
	struct timeval start, end;
	
	long long int lst[10000000];
	int time;
	size_t n = sizeof(lst)/sizeof(lst[0]);
	for(long long int i = 0; i < n; i++)
		lst[i] = i;
	long long int sum = 0;

	gettimeofday(&start, NULL);
	for(int i = 0; i < n; i++)
		sum += lst[i];
    gettimeofday(&end, NULL);

	 printf("time    = %ld milliseconds\n",
    	(((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec)))/1000);
	

	printf("n %zu\n", n);
	printf("sum %lld\n", sum);
	printf("time %d", time);
    //int millisec = diff * 1000 / CLOCKS_PER_SEC; 
}
/*
int main()
{
    int n = 40;
    int sum;

    sum = fib(n);
    
    printf("fib(%d) = %d\n", n, sum);
   
    return 0;
}*/