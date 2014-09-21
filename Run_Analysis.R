#Load the data from all 6 files in R environment

 test_subject<-read.table("./test/subject_test.txt")
 test_X<-read.table("./test/X_test.txt")
 test_Y<-read.table("./test/y_test.txt")
 train_subject<-read.table("./train/subject_train.txt")
 train_X<-read.table("./train/X_train.txt")
 train_Y<-read.table("./train/y_train.txt")

# Merging the data,subject and activity for training set

merged_train<-cbind(train_X,train_subject,train_Y)

# Merging the data,subject and activity for test set

merged_test<-cbind(test_X,test_subject,test_Y)


#Merging the training data and test data to one file

merged_data<-rbind(merged_train,merged_test)



#writing back the merged data to a file "merged_data"

write.table(merged_data,"./merged_data")


#Part 2
#Take out the mean and sd of tBodyAcc-x,y,z i.e columns 1 to 6 of merged data

mean_sd<-merged_data[,c(1,2,3,4,5,6,562,563)]


#part 3
#Giving meaningfull names to the activities

mean_sd$V1.2=replace(mean_sd$V1.2,mean_sd$V1.2==1,'Walking')
mean_sd$V1.2=replace(mean_sd$V1.2,mean_sd$V1.2==2,'Walking_Upstairs')
mean_sd$V1.2=replace(mean_sd$V1.2,mean_sd$V1.2==3,'Walking_Downstairs')
mean_sd$V1.2=replace(mean_sd$V1.2,mean_sd$V1.2==4,'Sitting')
mean_sd$V1.2=replace(mean_sd$V1.2,mean_sd$V1.2==5,'Standing')
mean_sd$V1.2=replace(mean_sd$V1.2,mean_sd$V1.2==6,'Laying')

#Part 4
#Assigning meaningfull names to the variables
colnames(mean_sd)=c('tBodyAcc-mean()-X','tBodyAcc-mean()-Y','tBodyAcc-mean()-Z','tBodyAcc-std()-X','tBodyAcc-std()-Y','tBodyAcc-std()-Z','Subject','Activity')


#Part 5
colnames(mean_sd)<-c('v1','v2','v3','v4','v5','v6','Subject','Activity')

#Finding mean on basis of Activity
r1<-data.frame(tapply(mean_sd$v1,mean_sd$Activity,mean))
r2<-data.frame(tapply(mean_sd$v2,mean_sd$Activity,mean))
r3<-data.frame(tapply(mean_sd$v3,mean_sd$Activity,mean))
r4<-data.frame(tapply(mean_sd$v4,mean_sd$Activity,mean))
r5<-data.frame(tapply(mean_sd$v5,mean_sd$Activity,mean))
r6<-data.frame(tapply(mean_sd$v6,mean_sd$Activity,mean))

#Finding mean on basis of Subject
s1<-data.frame(tapply(mean_sd$v1,mean_sd$Subject,mean))
s2<-data.frame(tapply(mean_sd$v2,mean_sd$Subject,mean))
s3<-data.frame(tapply(mean_sd$v3,mean_sd$Subject,mean))
s4<-data.frame(tapply(mean_sd$v4,mean_sd$Subject,mean))
s5<-data.frame(tapply(mean_sd$v5,mean_sd$Subject,mean))
s6<-data.frame(tapply(mean_sd$v6,mean_sd$Subject,mean))

#Combining on means on basis of Activity in one data frame
Mean_by_Activity<-cbind(r1,r2,r3,r4,r5,r6)

#Combining on means on basis of Subjecy in one data frame
Mean_by_Subject<-cbind(s1,s2,s3,s4,s5,s6)


#Giving meaningful name to means calculated:

colnames(mean_sd)=c('tBodyAcc-mean()-X','tBodyAcc-mean()-Y','tBodyAcc-mean()-Z','tBodyAcc-std()-X','tBodyAcc-std()-Y','tBodyAcc-std()-Z','Subject','Activity')
colnames(Mean_by_Activity)<-c('mean(tbody-Acc-mean-X)','mean(tbody-Acc-mean-Y)','mean(tbody-Acc-mean-Z)','mean(tbody-Acc-std-X)','mean(tbody-Acc-std-Y)','mean(tbody-Acc-std-Z)')
colnames(Mean_by_Subject)<-c('mean(tbody-Acc-mean-X)','mean(tbody-Acc-mean-Y)','mean(tbody-Acc-mean-Z)','mean(tbody-Acc-std-X)','mean(tbody-Acc-std-Y)','mean(tbody-Acc-std-Z)')

#Writing all the results computed in an output file.

write.table(mean_sd,"./mean_sd")
write.table(Mean_by_Activity,"./Mean_by_Activity")
write.table(Mean_by_Subject,"./Mean_by_Subject")






 
