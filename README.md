Tidy_Data-Project
=================

Project work for the Course on Getting and Cleaning Data

The Repository contains the script and a little bit about the prerequiste for running the scripts.

The run_analysis.R has to be run from a base directory 'UCI HAR Dataset'.The data files are accessed in the script assuming that the test and the train data are places in test and train directories respectively.

Running the script loads the file and merges them into a single data frame)"Merged_data" and also writes out copy of it in Hard Disk.

Next It is extracting 3 variables related to t-Body-acc-Mean-X,Y,Z and 3 variables related to t-Body-acc-std=X,Y,Z from the ("Merged_data") and writing the result in another data frame.

Finally it extract two reports showing the mean on each variable grouped by Activity and Subject from the above dataset.


