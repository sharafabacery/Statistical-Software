# (1) Copy the built in data set "trees" into a new data frame "trees.copy" and answer the following questions:
trees.copy=data.frame(trees)
# (a) Calculate the variance of the volume with heights greater than 71
treesVolume=c()
for( i in 1:nrow(trees.copy)){
    if(trees.copy[i,2]>71)treesVolume=c(treesVolume,trees.copy[i,3])
}
varianceTreesVolume=var(treesVolume)
#  270.3991

# (b) Calculate the mean volume of heights between 60 and 80
treesVolume=c()
for( i in 1:nrow(trees.copy)){
    if(trees.copy[i,2]>=60&trees.copy[i,2]<=80)treesVolume=c(treesVolume,trees.copy[i,3])
}
meanTreesVolume=mean(treesVolume)
#  26.97917

# (c) The correlation coefficient between the girth and the volume =……………..
cor(trees.copy["Girth"],trees.copy["Volume"])
#         Volume
# Girth 0.9671194 <-------correlation


# (2) Suppose that 2% of the people on the average are left-handed. Find the probability that at least four are left-handed among 200 people.
# p(X>=4)=1-P(X<4)
lmada=0.02*200
ppois(4,lmada)
# 0.6288369