
##CodeBook

the description in the following text was inspired by features_info.txt in UCI HAR Dataset:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc.XYZ and tGyro.XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc.XYZ and tGravityAcc.XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk.XYZ and tBodyGyroJerk.XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc.XYZ, fBodyAccJerk.XYZ, fBodyGyro.XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). "

The tidy output data uses the following "sub"-variables:

mean... indicates mean of the measure variable, std... indicates standard deviation, meanFreq.. indicates weighted average of the frequency components to obtain a mean frequency

X, Y, Z indicate the x-y-z axis measurements

The tidy data output uses the following decriptive names of columns and measure variables:

sub_id -> subject id's

1 .. 30 -> 30 subjects labeled with numbers 1 though 30

activity -> activities recorded

WALKING

WALKING_UPSTAIRS

WALKING_DOWNSTAIRS

SITTING

STANDING

LAYING

train_id -> indicates if subject belogs to train group

0 -> subject does not belong to train group (belongs to test group)

1 -> subject belongs to train group

measure -> names of different measures

tBodyAcc. -> body acceleration with options as below (mean/std and X/Y/Z)

mean...X

...Y

...Z

std...X

std...Y

std...Z

tGravityAcc. -> gravity acceleration with options as below (mean/std and X/Y/Z)

mean...X

...Y

...Z

std...X

std...Y

std...Z

tBodyAccJerk. -> jerk of body acceleration with options as below (mean/std and X/Y/Z)

mean...X

...Y

...Z

std...X

std...Y

std...Z

tBodyGyro. -> gyroscop acceleration with options as below (mean/std and X/Y/Z)

mean...X

...Y

...Z

std...X

std...Y

std...Z

tBodyGyroJerk. -> jerk of gyroscop with options as below (mean/std and X/Y/Z)

mean...X

...Y

...Z

std...X

std...Y

std...Z

tBodyAccMag. -> magnitude of body acceleration with options as below (mean/std)

mean..

std..

tGravityAccMag. -> magnitude of gravity acceleration with options as below (mean/std)

mean..

std..

tBodyAccJerkMag. -> magnitude of body jerk with options as below (mean/std)

mean..

std..

tBodyGyroMag. -> magnitude of gyro acceleration with options as below (mean/std)

mean..

std..

tBodyGyroJerkMag. -> magnitude of gyro jerk with options as below (mean/std)

mean..

std..

fBodyAcc. -> frequency of body acceleration with options as below (mean/std and X/Y/Z; meanFreq and X/Y/Z )

mean...X

...Y

...Z

std...X

...Y

...Z

meanFreq...X

...Y

...Z

fBodyAccJerk. -> frequency of body jerk with options as below (mean/std and X/Y/Z; meanFreq and X/Y/Z )

mean...X

...Y

...Z

std...X

...Y

...Z

meanFreq...X

...Y

...Z

fBodyGyro. -> frequency of gyro acceleration with options as below (mean/std and X/Y/Z; meanFreq and X/Y/Z )

mean...X

...Y

...Z

std...X

...Y

...Z

meanFreq...X

...Y

...Z

fBodyAccMag. -> magnitude of frequency body acceleration with options as below (mean/std/meanFreq)

mean..

std..

meanFreq..

fBodyAccJerkMag. -> magnitude of frequency body jerk with options as below (mean/std/meanFreq)

mean..

std..

meanFreq..

fBodyGyroMag. -> magnitude of gyroscop frequency acceleration with options as below (mean/std/meanFreq)

mean..

std..

meanFreq..

fBodyGyroJerkMag. -> magnitude of gyroscop frequency jerk with options as below (mean/std/meanFreq)

mean..

std..

meanFreq..

mean -> mean values of all measures specifies in "measure" column
