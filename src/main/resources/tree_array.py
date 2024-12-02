a = [7,8,4,6,9]
def lnr(a,i):
	if (i*2 + 1) < len(a):
		lnr(a,i*2 + 1)
	print(a[i],end = " ")
	if (i*2 + 2) < len(a):
		lnr(a,i*2 + 2)
lnr(a,1)