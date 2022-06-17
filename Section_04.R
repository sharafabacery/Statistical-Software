# (1) Given the following dataset

# (a)
Human.body=data.frame(Height=c(160,174,172,161,185,181,180),Weight=c(110,86,75,75,71,91,85),Gender=c("Female","Female","Male","Female","Male","Male","Male"))

# (b)
print(Human.body)

# (c)
Human.body.copy=Human.body

# (d)
Human.body.copy[7,3]="Female"

# (e)
Human.body.copy["age"]=30:36

# note: I dont know what values of test.txt for that I create new file with Human.body dataframe
write.table(Human.body,"test.txt",sep="\t",row.names=FALSE)

# (2)
txtdata=read.table('test.txt', header = TRUE)

# (3)
coldata=data.frame(Weight=txtdata["Weight"],Gender=txtdata["Gender"])

# note: I dont know what values of test.txt for that I create new file with Human.body dataframe
write.csv(Human.body,"test.csv",row.names=FALSE)

# (4)
sheetdata=read.csv("test.csv",header = TRUE, sep = ",")

# (5)
rowdata=data.frame(Height=c(sheetdata[2,1],sheetdata[3,1]),Weight=c(sheetdata[2,2],sheetdata[3,2]),Gender=c(sheetdata[2,3],sheetdata[3,3]))