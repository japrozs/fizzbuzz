s = 0
f = 1
h = 10
k = 20
for i in range(h, k, 3):
	f = f * i
	s = s + f
	print("f=", f, "s=", s)