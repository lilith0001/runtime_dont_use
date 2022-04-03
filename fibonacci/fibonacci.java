class fibonacci {
    public static void main(String[] args)
    {
        int n = 40;
	int sum;

	final long startTime = System.currentTimeMillis();
        sum = fib(n);
	final long endTime = System.currentTimeMillis();
        
        System.out.println("fib(" + n + ") = " + sum);
	System.out.println("time    = " + (endTime - startTime) + " milliseconds");
    }
    
    static int fib(int n)
    {
        if (n < 3)
            return 1;
        else
            return fib(n-1) + fib(n-2);
    }
}
