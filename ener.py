fhand=open('answer.txt')
output=open('graphdatauvw.dat','w')
for line in fhand:
	ener=line[49:60]
	wght=line[64:76]
	energy=float(ener)
	output.write(ener)
	next='\t'
	output.write(next)
	output.write(wght)
	next='\n'
	output.write(next)
	print (ener,wght)
fhand.close()
output.close()
