import string
all_letters = string.ascii_letters

dict1 = {}
dict2 = {}
plain_text = input()
key = int(input())

for i in range(52):
    dict1[all_letters[i]] = all_letters[(i+key) % 52]
    dict2[all_letters[(i+key) % 52]] = all_letters[i]


def fun(text, m):
    target = ""
    for j in text:
        if j != ' ':
            target += m[j]
        else:
            target += " "
    return target


cipher_text = fun(plain_text, dict1)
print(cipher_text)

decrypted_text = fun(cipher_text, dict2)
print(decrypted_text)
