# import numpy as np
# from array import *
fhandi=open('answer.txt')
fhando=open('histoplotuvw1qq.dat','w')
#x=raw_input('Enter the number of bins > ')
x=1000
y=x/20
bins=int(x)
brange=[0]
nrange=[]
to=float(0.0)
# nrange=array('f',[0])

b0=100
b1=200
b2=300
b3=400
b4=500
b5=600
b6=700
b7=800
b8=900
b9=1000

for x in range(bins):
        nrange.append(0)

e=1e3/bins

for t in range(bins):
        brange.append(e*t)
for line in fhandi:
        ener=line[59:72]
        wght=line[77:86]
        energy=float(ener)
        wg=float(wght)
        wg=wg*1
        
        if brange[b0]<energy<brange[b1]:
                for n in range(b0,b1):
                        if energy<brange[n]:
                                nrange[n]+=1*wg
                                break
        elif brange[b1]<energy<brange[b2]:
                for n in range(b1,b2):
                        if energy<brange[n]:
                                nrange[n]+=1*wg
                                break
        elif brange[b2]<energy<brange[b3]:
                for n in range(b2,b3):
                        if energy<brange[n]:
                                nrange[n]+=1*wg
                                break
        elif brange[b3]<energy<brange[b4]:
                for n in range(b3,b4):
                        if energy<brange[n]:
                                nrange[n]+=1*wg
                                break
        elif brange[b4]<energy<brange[b5]:
                for n in range(b4,b5):
                        if energy<brange[n]:
                                nrange[n]+=1*wg
                                break
        elif brange[b5]<energy<brange[b6]:
                for n in range(b5,b6):
                        if energy<brange[n]:
                                nrange[n]+=1*wg
                                break
        elif brange[b6]<energy<brange[b7]:
                for n in range(b6,b7):
                        if energy<brange[n]:
                                nrange[n]+=1*wg
                                break
        elif brange[b7]<energy<brange[b8]:
                for n in range(b7,b8):
                        if energy<brange[n]:
                                nrange[n]+=1*wg
                                break
        elif brange[b8]<energy<brange[b9]:
                for n in range(b8,b9):
                        if energy<brange[n]:
                                nrange[n]+=1*wg
                                break
         
                                 
for y in range(bins):
        temp=str.format("{0:0>5.2f}", nrange[y])
#        temp='{0: <11}'.format(temp)
#        temp=str(nrange[y])
        to=to+nrange[y]
        temp1=str.format("{0:0>5.1f}", brange[y])
#        temp1=str(brange[y])
        fhando.write(temp1)
        fhando.write('\t')
        fhando.write(temp)
        fhando.write('\n')
print (to)
