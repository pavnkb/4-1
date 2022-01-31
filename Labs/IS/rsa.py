import math
p, q = map(int, input("Enter global prime values: ").split())
n = p*q
phi = (p-1)*(q-1)
e = 2
while(math.gcd(phi, e) != 1):
    e = e + 1
d = (1 + (2*phi)) // e

print(f"PRIVATE: ({e}, {n})")
print(f"PUBLIC: ({d}, {n})")

M = int(input("Enter a message: "))
C = (M**e) % n
D = (C**d) % n
print("Cipher: ", C)
print("Decrypted: ", D)
