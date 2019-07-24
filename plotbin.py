fhandi=open('graphdatauvw.dat')
fhando=open('histoplotuvw.dat','w')
#x=raw_input('Enter the number of bins > ')
x=1000
bins=int(x)
nrange=[]
for x in range(bins):
        nrange.append(0)
e=25e3/bins
brange=[0]
for t in range(bins):
        brange.append(e*t)
for line in fhandi:
        line=line.rstrip()
        energy=float(line)
        for n in range(bins):
                if energy<brange[n]:
                        nrange[n]+=1
                        break
for y in range(bins):
        temp=str.format("{0:0>4.0f}", nrange[y])
#        temp='{0: <11}'.format(temp)
#        temp=str(nrange[y])
        temp1=str.format("{0:0>7.0f}", brange[y])
#        temp1=str(brange[y])
        fhando.write(temp1)
        fhando.write('\t')
        fhando.write(temp)
        fhando.write('\n')
