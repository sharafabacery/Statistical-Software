# (1) without using R, describe the result(s) of the following R commands:

# (a)
?intersect
#Performs set union, intersection, (asymmetric!) difference, equality and membership on two vectors.

# (b)
?mode 
#Get or set the ‘mode’ (a kind of ‘type’), or the storage mode of an R object.

# (c)
A<-c(rep(1,3),rep(2,4)); B<-A!=1; mode(B);
#logical

# (d)
Res<-rep(2:4,c(3,0,4));Res;res<-Res>=4; !res
# 2 2 2 4 4 4 4
#  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE

# (e)
matrix(data = c(1,2,3,10,20,30,100,200,300), nrow = 3)->A 
det(A); B<-t(A);
#  0

# (f)
A<-c(2,-2,22); diag(A); dim(A); dim(diag(A));
#    2    0    0
#    0   -2    0
#    0    0   22
# NULL
# 3 3

# (g)
A <- matrix(c(1,3,3,9,6,5),2,3)
B <- matrix(c(9,8,8,2,9,0),2,3)
rbind(A,B); cbind(A,B);
#   1    3    6
#   3    9    5
#   9    8    9
#   8    2    0
#   1    3    6    9    8    9
#   3    9    5    8    2    0
diag(A)->d1 ; sd<-diag(A)+2; mb<-B*3;
# d1 -> 1, 9 ------ sd  -> 3,11 ------ 
#mb
#   27   24   27
#   24    6    0

# (h)
y<- c(T,F,F,T); x<- c(F,F,T,T)
z1 <-x&y ; z2<-x|y
# z1 = FALSE FALSE FALSE  TRUE
# z2 = TRUE FALSE  TRUE  TRUE

# (i)
c(1:5,pi,"text")
# "1" , "2" , "3" ,"4" ,"5" , "3.14159265358979" , "text"

# (j)
letters[10:15] ->f
# "j" "k" "l" "m" "n" "o"

# (k)
1:3 = c(T,F,T)
# Error in 1:3 = c(T, F, T) : 
#  target of assignment expands to non-language object

# (2) Compute the truth table for logical AND
A <- c(T,T,F,F); B <- c(T,F,T,F); c <- A&B
#  TRUE FALSE FALSE FALSE

# (3) intercation 1:10 ,5:14
intersect(1:10,5:14)
# 5  6  7  8  9 10 ------> numeric
1:10&5:14
# TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE

# (4)
# compute A^3
A<-matrix(c(1,1,3,5,2,6,-2,-1,-3),3,3,byrow=T);
B<-A%*%A%*%A
#  0    0    0
#  0    0    0
#  0    0    0
# get sum second and third and make third column this sum
A[,3]=A[,2]+A[,3]
#  1    1    4
#  5    2    8
# -2   -1   -4


# (5) calculate transpose(B)*B
B<-matrix(rep(c(10,-10,10),15),15,3,byrow=T);
C<-t(B)%*%B;
#  1500 -1500  1500
# -1500  1500 -1500
#  1500 -1500  1500

# (6) Create function
tmpFn<-function(x,n) {
    sum<-1;
    for (i in 1:n) {
        sum=sum+((x^i)/i);
    }
    return (sum);
}
# tmpFn<-function(x,n) {
#    return (1+sum((x^(1:n))/(1:n)));
#}