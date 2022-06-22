# (1) The following are the weight losses of certain machine parts due to friction (in milligrams) when used with three different lubricants:
# Lubricant X 10 ,13 ,12 ,9 ,14 ,8
# Lubricant Y 9 ,7 ,11 ,9 ,8 ,10
# Lubricant Z 6 ,7 ,7 ,5 ,9 ,8
# Is there any significance difference in mean weight losses due to lubricant type? Use the 0.01 level of significance. State the alternatives, decision rule and conclusion.
# let H(o)(means of three weight losses of three are equal) ,H(a)(means of three weight losses of three are not equal)
datapro=data.frame(Response=c(10 ,13 ,12 ,9 ,14 ,8,9 ,7 ,11 ,9 ,8 ,10,6 ,7 ,7 ,5 ,9 ,8),type=rep(c("X","Y","Z"),c(6,6,6)))
res=aov(Response~type,data=datapro)
summary(res)
#            Df Sum Sq Mean Sq F value  Pr(>F)   
# type         2     48    24.0     7.5 0.00552 **
# Residuals   15     48     3.2                   
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# pr(value)=.00552 <0.01 then reject H(o) then the 3 not equal

# (2) Three samples, each consisting of six blocks of wood, are taken: a different drying technique is used on each sample and the percentages of water remaining are measured. 
# Technique 1 1.0 ,1.1 ,1.4 ,1.2, 1.5 ,1.3
# Technique 2 0.8 ,0.6 ,1.0 ,1.1 ,0.9 ,1.3
# Technique 3 0.6 ,0.4 0.8 ,0.9 ,0.5 ,0.6
# (a) State the assumptions you would need to make in order to carry out an analysis of variance on these data. 
# let H(o)(means of drying technique of wood of three are equal) ,H(a)(means of drying technique of wood of three are not equal)

# (b) Carry out the overall analysis of variance to test if there is difference in the average percentage of water using the three drying techniques. State clearly H0, Ha, decision rule and conclusion
datapro=data.frame(Response=c(1,1.1,1.4,1.2,1.5,1.3,.8,.6,1,1.1,.9,1.3,.6,.4,.8,.9,.5,.6),type=rep(c("X","Y","Z"),c(6,6,6)))
res=aov(Response~type,data=datapro)
summary(res)
#           Df Sum Sq Mean Sq F value   Pr(>F)    
# type         2 1.1411  0.5706    13.3 0.000475 ***
# Residuals   15 0.6433  0.0429                     
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# pr(value)=.000475 <0.01 then reject H(o) then the 3 not equal

# (c) Estimate the experimental variance.
# from summary function then variance =  0.0429

# (d) Estimate the overall mean and the treatment effects.
model.tables(res,"means")
# Tables of means
# Grand mean        
# 0.9444444 
#  type 
# type
#      X      Y      Z 
# 1.2500 0.9500 0.6333 
# model.tbles the overll mean = grand mean = 9444444
grandmean=.9444444
meanOfEach=c(1.2500, 0.9500, 0.6333)
treatmentEffects=meanOfEach-grandmean
#   0.3055556  0.0055556 -0.3111444

# (3) The yields of tomato plants grown using different types of fertilizer are given in the following table 
# Fertilizer X 3.5 4.0 3.8 4.1 4.4
# Fertilizer Y 4.7 5.0 4.5 5.3 4.6
# Fertilizer Z 3.6 3.9 4.2 4.1 4.0
# Is there evidence that the fertilizers produce different yields
# let H(o)(means of yields of tomato plants grown of three types of fertilizer are equal) ,H(a)(means of yields of tomato plants grown of three types of fertilizer are not equal)
datapro=data.frame(Response=c(3.5 ,4.0 ,3.8, 4.1 ,4.4,4.7 ,5.0, 4.5, 5.3, 4.6,3.6, 3.9, 4.2 ,4.1, 4.0),type=rep(c("X","Y","Z"),c(5,5,5)))
res=aov(Response~type,data=datapro)
summary(res)
#            Df Sum Sq Mean Sq F value   Pr(>F)    
# type         2  2.465   1.233   13.55 0.000837 ***
# Residuals   12  1.092   0.091                     
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#  pr(value)=.000837 <0.05 then reject H(o) then the 3 not equal
# and yes it produce different yields.