# Data Lineage

xtrain - loaded from train/X_train.txt
xtest - loaded from test/X_test.txt

ytrain - loaded from train/Y_train.txt
ytest - loaded from test/Y_test.txt

subject_train - loaded from train/subject_train.txt
subject_test - loaded from train/subject_test.txt

subject_train is then added as a column called **subject** to ytrain
subject_test is then added as a column called **subject** to ytest

xall is a combination of xtrain and xtest
yall is a combination of ytrain and ytest

xall column names are then changed to match names from data/features.txt

all is a combination of xall and yall data

allclean is a subset of all that only includes columns that include mean, std, or are the activity or subject column

allclean is then merged with the data from data/activity_labels.txt so that the activity number is now represented by the name of the activity

allclean columns are renamed to be all lower case with the () and with _ instead of -

averages is the allclead data grouped by **activity** and **subject**

meandata is the mean of all the values grouped by activity and subject

The fields in allclean are listed below, they map directly back to the values in data/features.txt except for activityid, activity and subject.
activityid and activity come from data/activity_labels.txt and subject comes from train/subject_train.txt and test/subject_test.txt           

tbodyacc_mean_x          
tbodyacc_mean_y          
tbodyacc_mean_z          
tbodyacc_std_x           
tbodyacc_std_y           
tbodyacc_std_z           
tgravityacc_mean_x       
tgravityacc_mean_y       
tgravityacc_mean_z       
tgravityacc_std_x        
tgravityacc_std_y        
tgravityacc_std_z        
tbodyaccjerk_mean_x      
tbodyaccjerk_mean_y      
tbodyaccjerk_mean_z      
tbodyaccjerk_std_x       
tbodyaccjerk_std_y       
tbodyaccjerk_std_z       
tbodygyro_mean_x         
tbodygyro_mean_y         
tbodygyro_mean_z         
tbodygyro_std_x          
tbodygyro_std_y          
tbodygyro_std_z          
tbodygyrojerk_mean_x     
tbodygyrojerk_mean_y     
tbodygyrojerk_mean_z     
tbodygyrojerk_std_x      
tbodygyrojerk_std_y      
tbodygyrojerk_std_z      
tbodyaccmag_mean         
tbodyaccmag_std          
tgravityaccmag_mean      
tgravityaccmag_std       
tbodyaccjerkmag_mean     
tbodyaccjerkmag_std      
tbodygyromag_mean        
tbodygyromag_std         
tbodygyrojerkmag_mean    
tbodygyrojerkmag_std     
fbodyacc_mean_x          
fbodyacc_mean_y          
fbodyacc_mean_z          
fbodyacc_std_x           
fbodyacc_std_y           
fbodyacc_std_z           
fbodyaccjerk_mean_x      
fbodyaccjerk_mean_y      
fbodyaccjerk_mean_z      
fbodyaccjerk_std_x       
fbodyaccjerk_std_y       
fbodyaccjerk_std_z       
fbodygyro_mean_x         
fbodygyro_mean_y         
fbodygyro_mean_z         
fbodygyro_std_x          
fbodygyro_std_y          
fbodygyro_std_z          
fbodyaccmag_mean         
fbodyaccmag_std          
fbodybodyaccjerkmag_mean 
fbodybodyaccjerkmag_std  
fbodybodygyromag_mean    
fbodybodygyromag_std     
fbodybodygyrojerkmag_mean
fbodybodygyrojerkmag_std 
activityid 
subject                  
activity     
