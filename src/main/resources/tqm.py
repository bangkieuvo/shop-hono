sohang = 2
step = 1
tichsochan = 2
soluongsochan = 1
while soluongsochan != 3:
	sohang = sohang + step*step
	step = step + 1
	if sohang%2 == 0:
		tichsochan = tichsochan * sohang
		soluongsochan = soluongsochan +1
print(tichsochan)	
