q, a = map(int, input("Enter values for global parameters : ").split())
xa, xb = map(int, input("Enter values for private keys : ").split())
ya = (a**xa) % q
yb = (a**xb) % q
ka = (yb**xa) % q
kb = (ya**xb) % q
print(f"{ka} {kb} are the session keys.")
