# Getting and Cleaning Data Course Project

Data cleaning script is run_analysis.R

The script completes the following tasks:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

3. Uses descriptive activity names to name the activities in the data set 

4. Appropriately labels the data set with descriptive variable names. 

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

You can find each step labeled in the code by #### followed by the step number and description.

The code book can be found at CodeBook.md

The output of run_analysis.R will print out the mean of them means and the mean of the standard deviations of the data collected grouped by the 
type of activity performed and then the subject that performed it.


Sample output:

   activity subject activityid tbodyacc_mean_x tbodyacc_mean_y tbodyacc_mean_z tbodyacc_std_x tbodyacc_std_y
   <chr>      <int>      <dbl>           <dbl>           <dbl>           <dbl>          <dbl>          <dbl>
 1 LAYING         1          6           0.222         -0.0405          -0.113         -0.928         -0.837
 2 LAYING         2          6           0.281         -0.0182          -0.107         -0.974         -0.980
 3 LAYING         3          6           0.276         -0.0190          -0.101         -0.983         -0.962
 4 LAYING         4          6           0.264         -0.0150          -0.111         -0.954         -0.942
 5 LAYING         5          6           0.278         -0.0183          -0.108         -0.966         -0.969
 6 LAYING         6          6           0.249         -0.0103          -0.133         -0.934         -0.925
 7 LAYING         7          6           0.250         -0.0204          -0.101         -0.937         -0.926
 8 LAYING         8          6           0.261         -0.0212          -0.102         -0.943         -0.935
 9 LAYING         9          6           0.259         -0.0205          -0.108         -0.942         -0.916
10 LAYING        10          6           0.280         -0.0243          -0.117         -0.968         -0.946
