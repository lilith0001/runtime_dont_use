import time
lst = list(range(int(1000000)))
start = time.time() * 1000
x = sum(lst)
end = time.time() * 1000
print(x)
print(f"{int(end-start)} milliseconds")