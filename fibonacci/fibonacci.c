#include <stdio.h>
#include <sys/time.h>

int fib(int n)
{
    if (n < 3)
        return 1;
    else
        return fib(n-1) + fib(n-2);
}

int main()
{
    struct timeval start, stop;
    int n = 40;
    int sum;

    gettimeofday(&start, NULL);
    sum = fib(n);
    gettimeofday(&stop, NULL);
    
    printf("fib(%d) = %d\n", n, sum);
    printf("time    = %ld milliseconds\n",
    (((stop.tv_sec * 1000000 + stop.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec)))/1000);

    return 0;
}
