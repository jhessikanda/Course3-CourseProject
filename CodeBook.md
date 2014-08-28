## Course 3 - Getting and Cleaning Data

### Course Project CodeBook
 <br />
The data comes from the UCI Human Activity Recognition Using Smartphones Data Set. Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
 <br />
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

 <br />
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
 <br />

For each record in the dataset it is provided: 
 <br />
Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. <br />
Triaxial Angular velocity from the gyroscope. <br />
A 561-feature vector with time and frequency domain variables. <br />
Its activity label. <br />
An identifier of the subject who carried out the experiment. 
 <br />
 
## Data dictionary

There are in total 66 feature variables in the tidy data set(Only 'mean' and 'std' functions were considered). They are described as follows:

* Feature Variables(Type: Numeric) <br />
	"Feature 1" : tBodyAcc-mean()-X <br />
	"Feature 2" : tBodyAcc-mean()-Y <br />
	"Feature 3" : tBodyAcc-mean()-Z <br />
	"Feature 4" : tBodyAcc-std()-X <br />
	"Feature 5" : tBodyAcc-std()-Y <br />
	"Feature 6" : tBodyAcc-std()-Z <br />
	"Feature 7" : tGravityAcc-mean()-X <br />
	"Feature 8" : tGravityAcc-mean()-Y <br />
	"Feature 9" : tGravityAcc-mean()-Z <br />
	"Feature 10" : tGravityAcc-std()-X <br />
	"Feature 11" : tGravityAcc-std()-Y <br />
	"Feature 12" : tGravityAcc-std()-Z  <br />
	"Feature 13" : tBodyAccJerk-mean()-X <br />
	"Feature 14" : tBodyAccJerk-mean()-Y <br />
	"Feature 15" : tBodyAccJerk-mean()-Z <br />
	"Feature 16" : tBodyAccJerk-std()-X <br />
	"Feature 17" : tBodyAccJerk-std()-Y <br />
	"Feature 18" : tBodyAccJerk-std()-Z <br />
	"Feature 19" : tBodyGyro-mean()-X <br />
	"Feature 20" : tBodyGyro-mean()-Y <br />
	"Feature 21" : tBodyGyro-mean()-Z <br />
	"Feature 22" : tBodyGyro-std()-X <br />
	"Feature 23" : tBodyGyro-std()-Y <br />
	"Feature 24" : tBodyGyro-std()-Z <br />
	"Feature 25" : tBodyGyroJerk-mean()-X <br />
	"Feature 26" : tBodyGyroJerk-mean()-Y <br />
	"Feature 27" : tBodyGyroJerk-mean()-Z <br />
	"Feature 28" : tBodyGyroJerk-std()-X <br />
	"Feature 29" : tBodyGyroJerk-std()-Y <br />
	"Feature 30" : tBodyGyroJerk-std()-Z <br />
	"Feature 31" : tBodyAccMag-mean() <br />
	"Feature 32" : tBodyAccMag-std() <br />
	"Feature 33" : tGravityAccMag-mean() <br />
	"Feature 34" : tGravityAccMag-std() <br />
	"Feature 35" : tBodyAccJerkMag-mean() <br />
	"Feature 36" : tBodyAccJerkMag-std() <br />
	"Feature 37" : tBodyGyroMag-mean() <br />
	"Feature 38" : tBodyGyroMag-std() <br />
	"Feature 39" : tBodyGyroJerkMag-mean() <br />
	"Feature 40" : tBodyGyroJerkMag-std() <br />
	"Feature 41" : fBodyAcc-mean()-X <br />
	"Feature 42" : fBodyAcc-mean()-Y <br />
	"Feature 43" : fBodyAcc-mean()-Z <br />
	"Feature 44" : fBodyAcc-std()-X <br />
	"Feature 45" : fBodyAcc-std()-Y <br />
	"Feature 46" : fBodyAcc-std()-Z <br />
	"Feature 47" : fBodyAccJerk-mean()-X <br />
	"Feature 48" : fBodyAccJerk-mean()-Y <br />
	"Feature 49" : fBodyAccJerk-mean()-Z <br />
	"Feature 50" : fBodyAccJerk-std()-X <br />
	"Feature 51" : fBodyAccJerk-std()-Y <br />
	"Feature 52" : fBodyAccJerk-std()-Z <br />
	"Feature 53" : fBodyGyro-mean()-X <br />
	"Feature 54" : fBodyGyro-mean()-Y <br />
	"Feature 55" : fBodyGyro-mean()-Z <br />
	"Feature 56" : fBodyGyro-std()-X <br />
	"Feature 57" : fBodyGyro-std()-Y <br />
	"Feature 58" : fBodyGyro-std()-Z <br />
	"Feature 59" : fBodyAccMag-mean() <br />
	"Feature 60" : fBodyAccMag-std() <br />
	"Feature 61" : fBodyBodyAccJerkMag-mean() <br />
	"Feature 62" : fBodyBodyAccJerkMag-std() <br />
	"Feature 63" : fBodyBodyGyroMag-mean() <br />
	"Feature 64" : fBodyBodyGyroMag-std() <br />
	"Feature 65" : fBodyBodyGyroJerkMag-mean() <br />
	"Feature 66" : fBodyBodyGyroJerkMag-std() <br />
	
* Activity(Type: Character) <br />
	1.WALKING <br />
	2.WALKING_UPSTAIRS <br />
	3.WALKING_DOWNSTAIRS <br />
	4.SITTING <br />
	5.STANDING <br />
	6.LAYING <br />

* Subject (Type: Numeric) <br />
	Subjects that were submited to this experiment. In total 30 different subjects identified from 1 to 30.
