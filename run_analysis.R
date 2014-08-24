run_analysis <- function() {
    
    subject_test <- read.table("UCI/test/subject_test.txt");
    x_test <- read.table("UCI/test/X_test.txt");
    y_test <- read.table("UCI/test/y_test.txt");
    
    subject_train <- read.table("UCI/train/subject_train.txt");
    x_train <- read.table("UCI/train/X_train.txt");
    y_train <- read.table("UCI/train/y_train.txt");
    
    x_bind <- rbind(x_test, x_train);
    y_bind <- rbind(y_test, y_train);
    subject_bind <- rbind(subject_test, subject_train);
    
    ## replace activity ID's by activity name
    # 'STEP 3'
    y_bind <- replace(y_bind, y_bind == 1, "WALKING");
    y_bind <- replace(y_bind, y_bind == 2, "WALKING_UPSTAIRS");
    y_bind <- replace(y_bind, y_bind == 3, "WALKING_DOWNSTAIRS");
    y_bind <- replace(y_bind, y_bind == 4, "SITTING");
    y_bind <- replace(y_bind, y_bind == 5, "STANDING");
    y_bind <- replace(y_bind, y_bind == 6, "LAYING");
    
    ## filter only features that has mean() and std() in their names
    ## total of 66 feature columns
    # 'STEP 2'
    
    x_filtered_set <- subset(x_bind, select = c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,
                                                121,122,123,124,125,126,161,162,163,164,165,166,
                                                201,202,214,215,227,228,240,241,253,254,266,267,
                                                268,269,270,271,345,346,347,348,349,350,424,425,
                                                426,427,428,429,503,504,516,517,529,530,542,543));
    # 'STEP 1'
    bind_set <- cbind(x_filtered_set, subject_bind, y_bind);
    
    vec_names <- c();
    
    for(i in 1:66){
        name <- paste0("Feature ", i, collapse = NULL);
        vec_names[i] <- name;
        
    }
    
    # 'STEP 4'
    var_names <- c(as.character(vec_names), "Subject", "Activity");
    colnames(bind_set) <- var_names;
    
    #calculate average of each variable for each subject and for each activity
    # 'STEP 5'
    tidy <- aggregate(bind_set, list(Subject=bind_set$Subject, Activity=bind_set$Activity), mean);
    
    #create second data set 'STEP 5'
    write.table(tidy[, c(1:68)], file = "TidyDataSet_CourseProject3.txt", na = "NA", row.names = FALSE, col.names = TRUE, fileEncoding = "UTF-8");
    
}