fhand=open('answer.txt')
output=open('graphdatauvw.dat','w')
for line in fhand:
	word=line[59:72]
	energy=float(word)
	output.write(word)
	next='\n'
	output.write(next)
	print (word)
fhand.close()
output.close()
