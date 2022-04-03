using System;

class fibonacci {
    static void Main()
    {
        int n = 40;
        int sum;
	
	long startTime = DateTimeOffset.Now.ToUnixTimeMilliseconds();
       	sum = fib(n);
        long endTime = DateTimeOffset.Now.ToUnixTimeMilliseconds();
        
	Console.WriteLine("fib(" + n + ") = " + sum);
	Console.WriteLine("time    = " + (endTime - startTime) + " milliseconds");
    }
    
    static int fib(int n)
    {
        if (n < 3)
            return 1;
        else
            return fib(n-1) + fib(n-2);
    }
}
