Here are the list of variable the code is using with its description:


test_subject=input from subject_test.txt
test_X=input from X_test.txt
test_Y=input from y_test.txt

merged_test=column bind of above 3 test variables

train_subject=input from subject_train.txt
train_X=input from X_train.txt
train_Y=input from y_train.txt

merged_train=column bind of above 3 train variables

merged_data=row bind of merged_test and merged_train
 
mean_sd=First 6 columns plus Subject and Activity column from merged_data


r1=stores mean of 1st column of mean_sd grouped by Activity
r2=stores mean of 2nd column of mean_sd grouped by Activity
r3=stores mean of 3rd column of mean_sd grouped by Activity
r4=stores mean of 4th column of mean_sd grouped by Activity
r5=stores mean of 5th column of mean_sd grouped by Activity
r6=stores mean of 6th column of mean_sd grouped by Activity

Mean_by_Activity=cbind of r1,r2,r3,r4,r5,r6

s1=stores mean of 1st column of mean_sd grouped by Subject
s2=stores mean of 2nd column of mean_sd grouped by Subject
s3=stores mean of 3rd column of mean_sd grouped by Subject
s4=stores mean of 4th column of mean_sd grouped by Subject
s5=stores mean of 5th column of mean_sd grouped by Subject
s6=stores mean of 6th column of mean_sd grouped by Subject

Mean_by_Subject=cbind of s1,s2,s3,s4,s5,s6


