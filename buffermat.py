import matplotlib.pyplot as plt
import os 
FILE_PATH_LIST=sorted([name for name in os.listdir('./') if name[:4]=='real'])

print(FILE_PATH_LIST)
Time=[[] for i in FILE_PATH_LIST]
Buffer=[[] for i in FILE_PATH_LIST]
bufferlist=[]
for index,filename in enumerate(FILE_PATH_LIST):
    with open(filename,'rb') as f:
        timestep=0
        for line in f:
            par=line.split()
            if float(par[0])-timestep>=0.2:
                Time[index].append(float(par[0]))
                Buffer[index].append(float(par[1]))
                timestep=float(par[0])

for i in range(len(FILE_PATH_LIST)):
    bufferlist.append(plt.plot(Time[i],Buffer[i]))
plt.xlabel('time(s)')
plt.ylabel('buffer(s)')
plt.legend(bufferlist,labels=['node'+str(i) for i in range(len(FILE_PATH_LIST))],loc='best')
plt.title('BB realbuffer in mulUser env')
plt.savefig('rBuffer.png')
plt.close()
