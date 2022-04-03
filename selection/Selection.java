import java.util.Random;

class Selection
{
	public static void main(String[] args)
	{
		Random rand = new Random();	
		int n = 50000;
		int[] A = new int[n];	
		
		// populate array with random integers
		for(int i=0; i<n; i++)
			A[i] = rand.nextInt(99);
		
		int minIndex;
		int min;
		
		final long startTime = System.currentTimeMillis();
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
		final long endTime = System.currentTimeMillis();
		System.out.println((endTime - startTime) + " milliseconds");
	}
}
