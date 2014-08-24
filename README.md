<<<<<<< HEAD
## Course 3 - Getting and Cleaning Data

### Course Project

* For this assigment it was submited 4 files: 
	1) The run_analisys.R script containing the code with the task designated.
	2) The final tidy data set called TidyDataSet_CourseProject3.txt, containing the final version of the data set.
	3) The CodeBook explaning the variable names used in the data set above.
	4) This README.md file explaining how the assigment was performed.
	5) The workspace that was used is also available in this repository.
	
* How the tidy data set was contructed:
	1) First in my workspace I have the folder "UCI" containing the files downloaded from the course page.
	2) Load the test and train files into R, and then bind them using rbind function.
	3) Also bind the two other columns "y" and "subject" into the same previous data set using cbind function.
	4) From the 541 initial variables I filtered only the ones with the name "mean()" and "std()" in it, resulting in 66 variables. 
	5) So in total we have 68 columns. The 66 previuosly filtered columns plus the "y" column representing the Activity IDs and the "Subject" column representing the different subjects submited to this experiment.
	6) Replace the Activity IDs from 1 to 6 with their descriptive names (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
	7) Name the columns accordingly. The 66 features were named as "Feature 1", "Feature 2", etc(they are described in the CodeBook). The other columns were named "Subject" and "Activity".
	8) The function aggregate was used to compute the average value of each feature variable according to Subject AND Activity.
	9) Finally the tidy data set was written in a text file called 'TidyDataSet_CourseProject3.txt' that you can find in this repository.
=======
Course3-CourseProject
=====================

Course3-CourseProject
>>>>>>> 2a7d0af81dc1ccf001bf62d14c06273a9b522d80
