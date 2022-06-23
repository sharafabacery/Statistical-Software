# (1) write R script to calculate the following:

# (a)
x<-10:100;
y<-x^3+4*x^2;
z<-sum(y); 
# 26852735

# (b)
tmpFn<-function() {
    sum<-2;
    for (i in 2:25) {
        sum=sum+((2^i)/i);
    }
    return (sum);
}
# alterative solution :
# tmpFn<-function() {
#    return (sum((2^(1:25))/(1:25)))
# }
tmpFn()
# 2807607

# (c)
tmpFn1<-function() {
    return (1+sum(seq(2,38,2)/seq(3,39,2)));
}
tmpFn1()
# 18.52033

# (2) use function paste to create the following chracter of vector 30:

# (a)
paste("label", sep = " ", 1:30)

# (b)
paste("fn", sep = "", 1:30)

# (c)
paste("x", sep = "-", 1:30)

# (3) solve linear system
A<-matrix(c(1,2,3,4,5,2,1,2,3,4,3,2,1,2,3,4,3,2,1,2,5,4,3,2,1),5,5,byrow=T);
B<-c(7,-1,-3,5,17)
solve(A,B)
# -2  3  5  2 -4

# (4) 
fun<-function(xVec){
    res=c();
    for (i in 1:length(xVec)) {
       if(xVec[i]<0){
            res=c(res,xVec[i]*xVec[i]+2*xVec[i]+3);
       }else if(xVec[i]>=0&xVec[i]<2) {
            res=c(res,xVec[i]+3);
       }else if(xVec[i]>=2){
            res=c(res,xVec[i]*xVec[i]+4*xVec[i]-7);
       }
    }
    return (res)
}
fun(c(1,-2,1,2,4))