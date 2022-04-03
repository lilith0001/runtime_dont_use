import java.util.Random;

class MatrixMult
{
    public static void main(String[] args)
    {
        // intitialization
		int n = 800;
		
        int[][] A = new int[n][n];
        int[][] B = new int[n][n];
        int[][] C = new int[n][n];
        Random rand = new Random();

        // populate matrices with random numbers from 0-99
        for(int i=0; i<n; i++)
            for(int j=0; j<n; j++)
                A[i][j] = rand.nextInt(99);     
			
        for(int i=0; i<n; i++)
            for(int j=0; j<n; j++)
                B[i][j] = rand.nextInt(99);
		
		final long startTime = System.currentTimeMillis();
		for(int i=0; i<n; i++)
		{
			for(int j=0; j<n; j++)
			{
				for(int k=0; k<n; k++)
					C[i][j] += A[i][k]*B[k][j];
			}
		}
		final long endTime = System.currentTimeMillis();
		System.out.println((endTime - startTime) + " milliseconds");
    }
}