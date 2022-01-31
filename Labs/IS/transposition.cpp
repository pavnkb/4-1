#include <bits/stdc++.h>
using namespace std;

string encrypt(string plain_text, string keyword)
{
    string cipher_text = "";
    int keyword_sz = keyword.size();
    int plain_text_sz = plain_text.size();
    int increment = 0;
    if (plain_text_sz % keyword_sz != 0)
        increment = keyword_sz - (plain_text_sz % keyword_sz);
    for (int i = 0; i < increment; i++)
        plain_text += "_";
    plain_text_sz += increment;
    map<char, string> matrix(keyword.begin(), keyword.end());
    for (auto x : keyword)
        matrix[x] = "";
    for (int i = 0; i < plain_text_sz; i++)
        matrix[keyword[i % keyword_sz]] += plain_text[i];
    string cipher_text = "";
    for (auto x : matrix)
        cipher_text += x.second;
    return cipher_text;
}

string decrypt(string cipher_text, string keyword)
{
    int keyword_sz = keyword.size();
    int cipher_text_sz = cipher_text.size();
    int cnt = cipher_text_sz / keyword_sz;

    map<char, string> m;
    for (auto x : keyword)
        m[x] = "";

    int i = 0;
    for (auto &x : m)
    {
        x.second = cipher_text.substr(i, cnt);
        i = i + cnt;
    }
    string decrypted_text = "";
    for (int i = 0; i < cnt; i++)
    {
        for (int j = 0; j < keyword_sz; j++)
        {
            decrypted_text += m[keyword[j]][i];
        }
    }
    return decrypted_text;
}

int main()
{
    string plain_text, keyword;
    getline(cin, plain_text);
    cin >> keyword;
    cout << encrypt(plain_text, keyword) << "\n";
    string cipher_text;
    getline(cin, cipher_text);
    cin >> keyword;
    cout << decrypt(cipher_text, keyword) << "\n";
    return 0;
}