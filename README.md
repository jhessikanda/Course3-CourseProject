## Course 3 - Getting and Cleaning Data

### Course Project

* For this assigment it was submited 4 files:  <br />
	1) The run_analisys.R script containing the code with the task designated. <br />
	2) The final tidy data set called TidyDataSet_CourseProject3.txt, containing the final version of the data set. <br />
	3) The CodeBook explaning the variable names used in the data set above. <br />
	4) This README.md file explaining how the assigment was performed. <br />
	5) The workspace that was used is also available in this repository. <br />
	
* How the tidy data set was contructed: <br />
	1) First in my workspace I have the folder "UCI" containing the files downloaded from the course page. <br />
	2) Load the test and train files into R, and then bind them using rbind function. <br />
	3) Also bind the two other columns "y" and "subject" into the same previous data set using cbind function. <br />
	4) From the 541 initial variables I filtered only the ones with the name "mean()" and "std()" in it, resulting in 66 variables.  <br />
	5) So in total we have 68 columns. The 66 previuosly filtered columns plus the "y" column representing the Activity IDs and the "Subject" column representing the different subjects submited to this experiment. <br />
	6) Replace the Activity IDs from 1 to 6 with their descriptive names (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). <br />
	7) Name the columns accordingly. The 66 features were named as "Feature 1", "Feature 2", etc(they are described in the CodeBook). The other columns were named "Subject" and "Activity". <br />
	8) The function aggregate was used to compute the average value of each feature variable according to Subject AND Activity. <br />
	9) Finally the tidy data set was written in a text file called 'TidyDataSet_CourseProject3.txt' that you can find in this repository. <br />
