import numpy as np
import random
import time

# initialization
n = 800

A = np.reshape(np.array([0] * n**2, dtype = int), (n, n))
B = np.reshape(np.array([0] * n**2, dtype = int), (n, n))
C = np.reshape(np.array([0] * n**2, dtype = int), (n, n))

# populate matrices with int values from 0 to 99
for i in range(n):
    for j in range(n):
        A[i][j] = random.randint(0, 5)
                
for i in range(n):
    for j in range(n):
        B[i][j] = random.randint(0, 5)

#start timer here
start = time.time() * 1000

#perform matrix multiplication
for i in range(n):
    for j in range(n):
        C[i][j] = sum(A[i,:] * B[:,j])
        
end = time.time() * 1000

print(f'{int(end - start)}', 'milliseconds')