# (1) Find the results of following expressions using R:

#(a)
3*(sin(2*pi/4)+atan(1.1))*exp(-2)

#(b)
5%%2

#(c)
x=1
sqrt(4*(x^2)-(2*x)+3)

#(d)
x=1
sqrt(4*(x^2)-(2*x)+3)-(1/6)

# (2) Explain the output(s) of the following R commands:

#(a)
4*
+2
#output 8 (4*2)

#(b)
x<-c(1,2,3);
y<-c(10,20);
z<-c(x,y,5);
u<-c(y^2,x)
u
#output u=(100 400   1   2   3) z=(1,2,3,10,20,5)
# assign vector(1,2,3) to x ,assign vector(10,20) to y ,assign power 2 to all y values and values of vector x, then output of z=(100,200,1,2,3)

#(c)
?mean
#output  get access of help documentation to know about what mean function do, Generic function for the (trimmed) arithmetic mean.

#(d)
?q
#output get access of help documentation to know about what q function do, The function quit or its alias q terminate the current R session.

#(f)
?seq
#output get access of help documentation to know about what q function do, Generate regular sequences. seq is a standard generic with a default method. seq.int is a primitive which can be much faster but has a few restrictions. seq_along and seq_len are very fast primitives for two common cases.

#(g)
Library()
#output error

#(h)
library()
#output get all information about all R Libraries

#(i)
x1 <-c(F,F,T,T);
x2 <-c(T,F,F,T);
Result <- x1&x2;
result <- x1&!x2
#output truth table x1 and logical and with not x2 ,result= FALSE FALSE  TRUE FALSE

# (3) Genrate a sequence of integer numbers  from 0 to 10 with step 1
seq(1,10,1)

# (4) Genrate a sequence of integer numbers  from 10 to 100 with step 5
seq(10,100,5)

# (5) Genrate a sequence of integer numbers  from 20 to 10 with step 2
seq(20,10,-2)

# (6) Write a program using R to solve the following problem:
x<-c(2.5,3,3.5,3.2,2.7)
y<-c(3,3.5,2,2.8)
meanCom<-(length(x)*mean(x)+length(y)*mean(y))/(length(x)+length(y))
varianceCom<-((length(x)-1)*sd(x)*sd(x)+(length(y)-1)*sd(y)*sd(y))/(length(x)+length(y)-2)
standardCom<-sqrt(varianceCom)
# standardCom
# 0.5064583
# meanCom
# 2.911111
