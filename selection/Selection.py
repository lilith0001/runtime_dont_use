import random
import time

# initialization
n = 50000
A = [0]*n

min = None
min_index = None

# populate array with random integers
for i in range(len(A)):
	A[i] = random.randint(0, 99)
	
start = time.time() * 1000

# sort
for i in range(n):
    min = A[i]
    min_index = i
    for j in range(i+1, n):
        if A[j] < min:
            min = A[j]
            min_index = j
    
    # swap
    temp = A[i]
    A[i] = min
    A[min_index] = temp;	

end = time.time() * 1000
print(f'{int(end - start)}', 'milliseconds')
