BEGIN {
}
{
len=length($0)
c+=len
w+=NF
}
END {
print "Char: ", c+NR
print "Lines: ", NR
print "Words: ", w
}
