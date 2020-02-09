#========
#exam 2.4
#========

#---a.
a1<- c(seq(from=3,to=6,length.out = 5),rep(x=c(2,-5.1,-33),times=2),7/42+2)
#---b.
take1<-a1[1] #提取第一个
take_last<-a1[length(a1)] #提取最后一个
#---c.
take3<-a1[-take1] #删除第一个
take4<-a1[-take_last]
#---d.
tt01<- c(take1,take3) #重建完整向量
tt02<-c(take4,take_last) 
#---e.
a2<-sort(x=a1,decreasing = FALSE)
#---f.
a2[length(x=a1):1]
sort(x=a1,decreasing = TRUE)
#---g.
c(rep(take3[4],3),rep(take3[6],4),take3[length(take3)])
#---h.
a3<-a2
a3[c(1,5,7,length(a3))]<- 99:95


#========
#exam 2.5
#========
#---a
c(2,0.5,1,2,0.5,1,2,0.5,1)-c(2,0.5,1)
#---b
Ft<-c(45,77,20,19,101,120,212)
Ct<-(5/9)*(Ft-32)
Ct

#---c
t1<-c(2,4,6)
t2<-c(1,2)
tt<-rep(t1,times=2)*rep(t2,each=3)

#---d
tt[2:5]<-c(-0.1,-100)
tt

#========
#exam 3.1
#========

#---a.
a<-matrix(c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5),nrow = 4,ncol = 2,byrow = TRUE)
a
#---b.
b<-a[-1,]
b
#---c.
a[,2]<- sort(a[,2])
a
#---d.
matrix(a[-4,-1])
#---e.
ee<-a[nrow(a)-1:nrow(a),]
matrix(ee,2,2)
#---f.
di<-diag(ee)
a[c(4,1),c(2,1)]<-di/2
a

#========
#exam 3.2
#========
#---a.
aa1<-cbind(c(1,2,7),c(2,4,6))
aa2<-cbind(c(10,30,50),c(20,40,60))
aat<-2/7*(aa1-aa2)
aat

#---b.
A<-matrix(c(1,2,7),ncol=1) #也可以不规定列数，因为当没有规定维度时，向量就是按一列来填充的
B<-matrix(c(3,4,8),ncol = 1)

#---c.
#i A%*%B无法实现，因为A的行数与B的列数不相等:报错非整合参数
#ii 可以实现
t(A)%*%B
#iii 可以实现
t(B)%*%(A%*%t(A))
#iv 无法实现
(A%*%t(A))%*%t(B)
#v 
I3<-diag(x=3)
((B%*%t(B))+(A%*%t(A))-100*I3)^(-1)  #错误答案
solve((B%*%t(B))+(A%*%t(A))-100*I3) #正确答案，对于矩阵要使用函数solve()来求逆矩阵（即矩阵的-1次方）

#---c.
AA<-diag(4) #创建一个4*4单位矩阵
diag(AA)<-c(2,3,5,-1) #替换对角线上的数值
AA #查看
I4<- diag(x=4)
sAA<-solve(AA)%*%AA-I4

#========
#exam 3.3
#========

#---a.
AR<-array(seq(from=4.8,to=0.1,length.out = 48),dim = c(4,2,6)) #记得规定元素个数

#---b.
BR<-AR[c(4,2),2,]

#---c.
CR<-array(rep(BR,times=4),dim = c(2,2,2,3))

#---d.
DR<-AR[,,-6]

#---e.
DR[c(2,4),2,c(1,3,5)]<-(-99)
DR
