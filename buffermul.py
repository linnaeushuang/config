import matplotlib.pyplot as plt
import os
dirname=['bb','pensieve','fastmpc','robustmpc']
dirList=[[],[],[],[]]
timeList=[[],[],[],[]]
bufferList=[[],[],[],[]]
for index,filename in enumerate(dirname):
    dirList[index]=sorted([name for name in os.listdir('./'+filename) if name[:4]=='real'])
    timeList[index]=[[] for i in dirList[index]]
    bufferList[index]=[[] for i in dirList[index]]
    for fileindex,logfilename in enumerate(dirList[index]):
        with open('./'+filename+'/'+logfilename,'rb') as f:
            timestep=0
            for line in f:
                par=line.split()
                if float(par[0])-timestep>=0.2:
                    timeList[index][fileindex].append(float(par[0]))
                    bufferList[index][fileindex].append(float(par[1]))
                    timestep=float(par[0])


plt.figure()
for index,filename in enumerate(dirname):
    plt.subplot(2,2,index+1)
    bList=[]
    for i in range(len(dirList[index])):
        bList.append(plt.plot(timeList[index][i],bufferList[index][i]))
    plt.xlabel('time(s)')
    plt.ylabel('buffer(s)')
    plt.legend(bufferList,labels=['node'+str(i) for i in range(len(dirList[index]))],loc='best')
    plt.title(filename)

plt.savefig('r'+os.getcwd().split('/')[-1])
plt.close()

