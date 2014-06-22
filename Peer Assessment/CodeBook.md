---
title: "Getting and Cleaning Data Course Project CodeBook"
author: "Fahad Usman"
date: "Sunday, June 22, 2014"
output: html_document
---

Codebook was generated on 2014-06-22 23:04:47. Data was obtained from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Variable list and descriptions
------------------------------

Variable name    | Description
-----------------|------------
subject          | ID the subject who performed the activity for each window sample. Its range is from 1 to 30.
Activity         | Activity name


Dataset structure
-----------------


```r
str(result)
```

```
'data.frame':        180 obs. of  68 variables:
 $ subject                 : int  1 1 1 1 1 1 2 2 2 2 ...
 $ Activity                : chr  "laying" "sitting" "standing" "walking" ...
 $ tBodyAccMeanX           : num  0.222 0.261 0.279 0.277 0.289 ...
 $ tBodyAccMeanY           : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
 $ tBodyAccMeanZ           : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...
 $ tBodyAccStdX            : num  -0.928 -0.977 -0.996 -0.284 0.03 ...
 $ tBodyAccStdY            : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
 $ tBodyAccStdZ            : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...
 $ tGravityAccMeanX        : num  -0.249 0.832 0.943 0.935 0.932 ...
 $ tGravityAccMeanY        : num  0.706 0.204 -0.273 -0.282 -0.267 ...
 $ tGravityAccMeanZ        : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...
 $ tGravityAccStdX         : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...
 $ tGravityAccStdY         : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...
 $ tGravityAccStdZ         : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...
 $ tBodyAccJerkMeanX       : num  0.0811 0.0775 0.0754 0.074 0.0542 ...
 $ tBodyAccJerkMeanY       : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...
 $ tBodyAccJerkMeanZ       : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...
 $ tBodyAccJerkStdX        : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...
 $ tBodyAccJerkStdY        : num  -0.924 -0.981 -0.986 0.067 -0.102 ...
 $ tBodyAccJerkStdZ        : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...
 $ tBodyGyroMeanX          : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...
 $ tBodyGyroMeanY          : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...
 $ tBodyGyroMeanZ          : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...
 $ tBodyGyroStdX           : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...
 $ tBodyGyroStdY           : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...
 $ tBodyGyroStdZ           : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...
 $ tBodyGyroJerkMeanX      : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...
 $ tBodyGyroJerkMeanY      : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...
 $ tBodyGyroJerkMeanZ      : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...
 $ tBodyGyroJerkStdX       : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...
 $ tBodyGyroJerkStdY       : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...
 $ tBodyGyroJerkStdZ       : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...
 $ tBodyAccMagMean         : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ tBodyAccMagStd          : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ tGravityAccMagMean      : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ tGravityAccMagStd       : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ tBodyAccJerkMagMean     : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
 $ tBodyAccJerkMagStd      : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
 $ tBodyGyroMagMean        : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
 $ tBodyGyroMagStd         : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...
 $ tBodyGyroJerkMagMean    : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...
 $ tBodyGyroJerkMagStd     : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...
 $ fBodyAccMeanX           : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
 $ fBodyAccMeanY           : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
 $ fBodyAccMeanZ           : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...
 $ fBodyAccStdX            : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
 $ fBodyAccStdY            : num  -0.834 -0.917 -0.972 0.056 -0.113 ...
 $ fBodyAccStdZ            : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...
 $ fBodyAccJerkMeanX       : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
 $ fBodyAccJerkMeanY       : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
 $ fBodyAccJerkMeanZ       : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...
 $ fBodyAccJerkStdX        : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
 $ fBodyAccJerkStdY        : num  -0.932 -0.983 -0.987 0.107 -0.135 ...
 $ fBodyAccJerkStdZ        : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...
 $ fBodyGyroMeanX          : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...
 $ fBodyGyroMeanY          : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
 $ fBodyGyroMeanZ          : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
 $ fBodyGyroStdX           : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...
 $ fBodyGyroStdY           : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
 $ fBodyGyroStdZ           : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...
 $ fBodyAccMagMean         : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
 $ fBodyAccMagStd          : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
 $ fBodyBodyAccJerkMagMean : num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
 $ fBodyBodyAccJerkMagStd  : num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
 $ fBodyBodyGyroMagMean    : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
 $ fBodyBodyGyroMagStd     : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
 $ fBodyBodyGyroJerkMagMean: num  -0.942 -0.99 -0.995 -0.319 -0.282 ...
 $ fBodyBodyGyroJerkMagStd : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...
```


List the key variables in the data table
----------------------------------------

```r
names(result)
```
```
 [1] "subject"                  "Activity"                 "tBodyAccMeanX"            "tBodyAccMeanY"           
 [5] "tBodyAccMeanZ"            "tBodyAccStdX"             "tBodyAccStdY"             "tBodyAccStdZ"            
 [9] "tGravityAccMeanX"         "tGravityAccMeanY"         "tGravityAccMeanZ"         "tGravityAccStdX"         
[13] "tGravityAccStdY"          "tGravityAccStdZ"          "tBodyAccJerkMeanX"        "tBodyAccJerkMeanY"       
[17] "tBodyAccJerkMeanZ"        "tBodyAccJerkStdX"         "tBodyAccJerkStdY"         "tBodyAccJerkStdZ"        
[21] "tBodyGyroMeanX"           "tBodyGyroMeanY"           "tBodyGyroMeanZ"           "tBodyGyroStdX"           
[25] "tBodyGyroStdY"            "tBodyGyroStdZ"            "tBodyGyroJerkMeanX"       "tBodyGyroJerkMeanY"      
[29] "tBodyGyroJerkMeanZ"       "tBodyGyroJerkStdX"        "tBodyGyroJerkStdY"        "tBodyGyroJerkStdZ"       
[33] "tBodyAccMagMean"          "tBodyAccMagStd"           "tGravityAccMagMean"       "tGravityAccMagStd"       
[37] "tBodyAccJerkMagMean"      "tBodyAccJerkMagStd"       "tBodyGyroMagMean"         "tBodyGyroMagStd"         
[41] "tBodyGyroJerkMagMean"     "tBodyGyroJerkMagStd"      "fBodyAccMeanX"            "fBodyAccMeanY"           
[45] "fBodyAccMeanZ"            "fBodyAccStdX"             "fBodyAccStdY"             "fBodyAccStdZ"            
[49] "fBodyAccJerkMeanX"        "fBodyAccJerkMeanY"        "fBodyAccJerkMeanZ"        "fBodyAccJerkStdX"        
[53] "fBodyAccJerkStdY"         "fBodyAccJerkStdZ"         "fBodyGyroMeanX"           "fBodyGyroMeanY"          
[57] "fBodyGyroMeanZ"           "fBodyGyroStdX"            "fBodyGyroStdY"            "fBodyGyroStdZ"           
[61] "fBodyAccMagMean"          "fBodyAccMagStd"           "fBodyBodyAccJerkMagMean"  "fBodyBodyAccJerkMagStd"  
[65] "fBodyBodyGyroMagMean"     "fBodyBodyGyroMagStd"      "fBodyBodyGyroJerkMagMean" "fBodyBodyGyroJerkMagStd" 
```

Show a few rows of the dataset
------------------------------


```r
head(result)
```

```
  subject          Activity tBodyAccMeanX tBodyAccMeanY tBodyAccMeanZ tBodyAccStdX tBodyAccStdY tBodyAccStdZ
1       1            laying     0.2215982  -0.040513953    -0.1132036  -0.92805647 -0.836827406  -0.82606140
2       1           sitting     0.2612376  -0.001308288    -0.1045442  -0.97722901 -0.922618642  -0.93958629
3       1          standing     0.2789176  -0.016137590    -0.1106018  -0.99575990 -0.973190056  -0.97977588
4       1           walking     0.2773308  -0.017383819    -0.1111481  -0.28374026  0.114461337  -0.26002790
5       1 walkingdownstairs     0.2891883  -0.009918505    -0.1075662   0.03003534 -0.031935943  -0.23043421
6       1   walkingupstairs     0.2554617  -0.023953149    -0.0973020  -0.35470803 -0.002320265  -0.01947924
  tGravityAccMeanX tGravityAccMeanY tGravityAccMeanZ tGravityAccStdX tGravityAccStdY tGravityAccStdZ tBodyAccJerkMeanX
1       -0.2488818        0.7055498       0.44581772      -0.8968300      -0.9077200      -0.8523663        0.08108653
2        0.8315099        0.2044116       0.33204370      -0.9684571      -0.9355171      -0.9490409        0.07748252
3        0.9429520       -0.2729838       0.01349058      -0.9937630      -0.9812260      -0.9763241        0.07537665
4        0.9352232       -0.2821650      -0.06810286      -0.9766096      -0.9713060      -0.9477172        0.07404163
5        0.9318744       -0.2666103      -0.06211996      -0.9505598      -0.9370187      -0.8959397        0.05415532
6        0.8933511       -0.3621534      -0.07540294      -0.9563670      -0.9528492      -0.9123794        0.10137273
  tBodyAccJerkMeanY tBodyAccJerkMeanZ tBodyAccJerkStdX tBodyAccJerkStdY tBodyAccJerkStdZ tBodyGyroMeanX tBodyGyroMeanY
1      0.0038382040       0.010834236      -0.95848211       -0.9241493       -0.9548551    -0.01655309    -0.06448612
2     -0.0006191028      -0.003367792      -0.98643071       -0.9813720       -0.9879108    -0.04535006    -0.09192415
3      0.0079757309      -0.003685250      -0.99460454       -0.9856487       -0.9922512    -0.02398773    -0.05939722
4      0.0282721096      -0.004168406      -0.11361560        0.0670025       -0.5026998    -0.04183096    -0.06953005
5      0.0296504490      -0.010971973      -0.01228386       -0.1016014       -0.3457350    -0.03507819    -0.09093713
6      0.0194863076      -0.045562545      -0.44684389       -0.3782744       -0.7065935     0.05054938    -0.16617002
  tBodyGyroMeanZ tBodyGyroStdX tBodyGyroStdY tBodyGyroStdZ tBodyGyroJerkMeanX tBodyGyroJerkMeanY tBodyGyroJerkMeanZ
1     0.14868944    -0.8735439  -0.951090440    -0.9082847        -0.10727095        -0.04151729        -0.07405012
2     0.06293138    -0.9772113  -0.966473895    -0.9414259        -0.09367938        -0.04021181        -0.04670263
3     0.07480075    -0.9871919  -0.987734440    -0.9806456        -0.09960921        -0.04406279        -0.04895055
4     0.08494482    -0.4735355  -0.054607769    -0.3442666        -0.08999754        -0.03984287        -0.04613093
5     0.09008501    -0.4580305  -0.126349195    -0.1247025        -0.07395920        -0.04399028        -0.02704611
6     0.05835955    -0.5448711   0.004105184    -0.5071687        -0.12223277        -0.04214859        -0.04071255
  tBodyGyroJerkStdX tBodyGyroJerkStdY tBodyGyroJerkStdZ tBodyAccMagMean tBodyAccMagStd tGravityAccMagMean
1        -0.9186085        -0.9679072        -0.9577902     -0.84192915    -0.79514486        -0.84192915
2        -0.9917316        -0.9895181        -0.9879358     -0.94853679    -0.92707842        -0.94853679
3        -0.9929451        -0.9951379        -0.9921085     -0.98427821    -0.98194293        -0.98427821
4        -0.2074219        -0.3044685        -0.4042555     -0.13697118    -0.21968865        -0.13697118
5        -0.4870273        -0.2388248        -0.2687615      0.02718829     0.01988435         0.02718829
6        -0.6147865        -0.6016967        -0.6063320     -0.12992763    -0.32497093        -0.12992763
  tGravityAccMagStd tBodyAccJerkMagMean tBodyAccJerkMagStd tBodyGyroMagMean tBodyGyroMagStd tBodyGyroJerkMagMean
1       -0.79514486         -0.95439626        -0.92824563      -0.87475955      -0.8190102           -0.9634610
2       -0.92707842         -0.98736420        -0.98412002      -0.93089249      -0.9345318           -0.9919763
3       -0.98194293         -0.99236779        -0.99309621      -0.97649379      -0.9786900           -0.9949668
4       -0.21968865         -0.14142881        -0.07447175      -0.16097955      -0.1869784           -0.2987037
5        0.01988435         -0.08944748        -0.02578772      -0.07574125      -0.2257244           -0.2954638
6       -0.32497093         -0.46650345        -0.47899162      -0.12673559      -0.1486193           -0.5948829
  tBodyGyroJerkMagStd fBodyAccMeanX fBodyAccMeanY fBodyAccMeanZ fBodyAccStdX fBodyAccStdY fBodyAccStdZ fBodyAccJerkMeanX
1          -0.9358410   -0.93909905  -0.867065205    -0.8826669  -0.92443743  -0.83362556  -0.81289156       -0.95707388
2          -0.9883087   -0.97964124  -0.944084550    -0.9591849  -0.97641231  -0.91727501  -0.93446956       -0.98659702
3          -0.9947332   -0.99524993  -0.977070848    -0.9852971  -0.99602835  -0.97229310  -0.97793726       -0.99463080
4          -0.3253249   -0.20279431   0.089712726    -0.3315601  -0.31913472   0.05604001  -0.27968675       -0.17054696
5          -0.3065106    0.03822918   0.001549908    -0.2255745   0.02433084  -0.11296374  -0.29792789       -0.02766387
6          -0.6485530   -0.40432178  -0.190976721    -0.4333497  -0.33742819   0.02176951   0.08595655       -0.47987525
  fBodyAccJerkMeanY fBodyAccJerkMeanZ fBodyAccJerkStdX fBodyAccJerkStdY fBodyAccJerkStdZ fBodyGyroMeanX fBodyGyroMeanY
1       -0.92246261        -0.9480609       -0.9641607       -0.9322179       -0.9605870     -0.8502492    -0.95219149
2       -0.98157947        -0.9860531       -0.9874930       -0.9825139       -0.9883392     -0.9761615    -0.97583859
3       -0.98541870        -0.9907522       -0.9950738       -0.9870182       -0.9923498     -0.9863868    -0.98898446
4       -0.03522552        -0.4689992       -0.1335866        0.1067399       -0.5347134     -0.3390322    -0.10305942
5       -0.12866716        -0.2883347       -0.0863279       -0.1345800       -0.4017215     -0.3524496    -0.05570225
6       -0.41344459        -0.6854744       -0.4619070       -0.3817771       -0.7260402     -0.4926117    -0.31947461
  fBodyGyroMeanZ fBodyGyroStdX fBodyGyroStdY fBodyGyroStdZ fBodyAccMagMean fBodyAccMagStd fBodyBodyAccJerkMagMean
1    -0.90930272    -0.8822965   -0.95123205    -0.9165825     -0.86176765     -0.7983009             -0.93330036
2    -0.95131554    -0.9779042   -0.96234504    -0.9439178     -0.94778292     -0.9284448             -0.98526213
3    -0.98077312    -0.9874971   -0.98710773    -0.9823453     -0.98535636     -0.9823138             -0.99254248
4    -0.25594094    -0.5166919   -0.03350816    -0.4365622     -0.12862345     -0.3980326             -0.05711940
5    -0.03186943    -0.4954225   -0.18141473    -0.2384436      0.09658453     -0.1865303              0.02621849
6    -0.45359721    -0.5658925    0.15153891    -0.5717078     -0.35239594     -0.4162601             -0.44265216
  fBodyBodyAccJerkMagStd fBodyBodyGyroMagMean fBodyBodyGyroMagStd fBodyBodyGyroJerkMagMean fBodyBodyGyroJerkMagStd
1             -0.9218040           -0.8621902          -0.8243194               -0.9423669              -0.9326607
2             -0.9816062           -0.9584356          -0.9321984               -0.9897975              -0.9870496
3             -0.9925360           -0.9846176          -0.9784661               -0.9948154              -0.9946711
4             -0.1034924           -0.1992526          -0.3210180               -0.3193086              -0.3816019
5             -0.1040523           -0.1857203          -0.3983504               -0.2819634              -0.3919199
6             -0.5330599           -0.3259615          -0.1829855               -0.6346651              -0.6939305
```


Summary of variables
--------------------


```r
summary(result)
```

```
    subject       Activity         tBodyAccMeanX    tBodyAccMeanY       tBodyAccMeanZ       tBodyAccStdX    
 Min.   : 1.0   Length:180         Min.   :0.2216   Min.   :-0.040514   Min.   :-0.15251   Min.   :-0.9961  
 1st Qu.: 8.0   Class :character   1st Qu.:0.2712   1st Qu.:-0.020022   1st Qu.:-0.11207   1st Qu.:-0.9799  
 Median :15.5   Mode  :character   Median :0.2770   Median :-0.017262   Median :-0.10819   Median :-0.7526  
 Mean   :15.5                      Mean   :0.2743   Mean   :-0.017876   Mean   :-0.10916   Mean   :-0.5577  
 3rd Qu.:23.0                      3rd Qu.:0.2800   3rd Qu.:-0.014936   3rd Qu.:-0.10443   3rd Qu.:-0.1984  
 Max.   :30.0                      Max.   :0.3015   Max.   :-0.001308   Max.   :-0.07538   Max.   : 0.6269  
  tBodyAccStdY       tBodyAccStdZ     tGravityAccMeanX  tGravityAccMeanY   tGravityAccMeanZ   tGravityAccStdX  
 Min.   :-0.99024   Min.   :-0.9877   Min.   :-0.6800   Min.   :-0.47989   Min.   :-0.49509   Min.   :-0.9968  
 1st Qu.:-0.94205   1st Qu.:-0.9498   1st Qu.: 0.8376   1st Qu.:-0.23319   1st Qu.:-0.11726   1st Qu.:-0.9825  
 Median :-0.50897   Median :-0.6518   Median : 0.9208   Median :-0.12782   Median : 0.02384   Median :-0.9695  
 Mean   :-0.46046   Mean   :-0.5756   Mean   : 0.6975   Mean   :-0.01621   Mean   : 0.07413   Mean   :-0.9638  
 3rd Qu.:-0.03077   3rd Qu.:-0.2306   3rd Qu.: 0.9425   3rd Qu.: 0.08773   3rd Qu.: 0.14946   3rd Qu.:-0.9509  
 Max.   : 0.61694   Max.   : 0.6090   Max.   : 0.9745   Max.   : 0.95659   Max.   : 0.95787   Max.   :-0.8296  
 tGravityAccStdY   tGravityAccStdZ   tBodyAccJerkMeanX tBodyAccJerkMeanY    tBodyAccJerkMeanZ   tBodyAccJerkStdX 
 Min.   :-0.9942   Min.   :-0.9910   Min.   :0.04269   Min.   :-0.0386872   Min.   :-0.067458   Min.   :-0.9946  
 1st Qu.:-0.9711   1st Qu.:-0.9605   1st Qu.:0.07396   1st Qu.: 0.0004664   1st Qu.:-0.010601   1st Qu.:-0.9832  
 Median :-0.9590   Median :-0.9450   Median :0.07640   Median : 0.0094698   Median :-0.003861   Median :-0.8104  
 Mean   :-0.9524   Mean   :-0.9364   Mean   :0.07947   Mean   : 0.0075652   Mean   :-0.004953   Mean   :-0.5949  
 3rd Qu.:-0.9370   3rd Qu.:-0.9180   3rd Qu.:0.08330   3rd Qu.: 0.0134008   3rd Qu.: 0.001958   3rd Qu.:-0.2233  
 Max.   :-0.6436   Max.   :-0.6102   Max.   :0.13019   Max.   : 0.0568186   Max.   : 0.038053   Max.   : 0.5443  
 tBodyAccJerkStdY  tBodyAccJerkStdZ   tBodyGyroMeanX     tBodyGyroMeanY     tBodyGyroMeanZ     tBodyGyroStdX    
 Min.   :-0.9895   Min.   :-0.99329   Min.   :-0.20578   Min.   :-0.20421   Min.   :-0.07245   Min.   :-0.9943  
 1st Qu.:-0.9724   1st Qu.:-0.98266   1st Qu.:-0.04712   1st Qu.:-0.08955   1st Qu.: 0.07475   1st Qu.:-0.9735  
 Median :-0.7756   Median :-0.88366   Median :-0.02871   Median :-0.07318   Median : 0.08512   Median :-0.7890  
 Mean   :-0.5654   Mean   :-0.73596   Mean   :-0.03244   Mean   :-0.07426   Mean   : 0.08744   Mean   :-0.6916  
 3rd Qu.:-0.1483   3rd Qu.:-0.51212   3rd Qu.:-0.01676   3rd Qu.:-0.06113   3rd Qu.: 0.10177   3rd Qu.:-0.4414  
 Max.   : 0.3553   Max.   : 0.03102   Max.   : 0.19270   Max.   : 0.02747   Max.   : 0.17910   Max.   : 0.2677  
 tBodyGyroStdY     tBodyGyroStdZ     tBodyGyroJerkMeanX tBodyGyroJerkMeanY tBodyGyroJerkMeanZ  tBodyGyroJerkStdX
 Min.   :-0.9942   Min.   :-0.9855   Min.   :-0.15721   Min.   :-0.07681   Min.   :-0.092500   Min.   :-0.9965  
 1st Qu.:-0.9629   1st Qu.:-0.9609   1st Qu.:-0.10322   1st Qu.:-0.04552   1st Qu.:-0.061725   1st Qu.:-0.9800  
 Median :-0.8017   Median :-0.8010   Median :-0.09868   Median :-0.04112   Median :-0.053430   Median :-0.8396  
 Mean   :-0.6533   Mean   :-0.6164   Mean   :-0.09606   Mean   :-0.04269   Mean   :-0.054802   Mean   :-0.7036  
 3rd Qu.:-0.4196   3rd Qu.:-0.3106   3rd Qu.:-0.09110   3rd Qu.:-0.03842   3rd Qu.:-0.048985   3rd Qu.:-0.4629  
 Max.   : 0.4765   Max.   : 0.5649   Max.   :-0.02209   Max.   :-0.01320   Max.   :-0.006941   Max.   : 0.1791  
 tBodyGyroJerkStdY tBodyGyroJerkStdZ tBodyAccMagMean   tBodyAccMagStd    tGravityAccMagMean tGravityAccMagStd
 Min.   :-0.9971   Min.   :-0.9954   Min.   :-0.9865   Min.   :-0.9865   Min.   :-0.9865    Min.   :-0.9865  
 1st Qu.:-0.9832   1st Qu.:-0.9848   1st Qu.:-0.9573   1st Qu.:-0.9430   1st Qu.:-0.9573    1st Qu.:-0.9430  
 Median :-0.8942   Median :-0.8610   Median :-0.4829   Median :-0.6074   Median :-0.4829    Median :-0.6074  
 Mean   :-0.7636   Mean   :-0.7096   Mean   :-0.4973   Mean   :-0.5439   Mean   :-0.4973    Mean   :-0.5439  
 3rd Qu.:-0.5861   3rd Qu.:-0.4741   3rd Qu.:-0.0919   3rd Qu.:-0.2090   3rd Qu.:-0.0919    3rd Qu.:-0.2090  
 Max.   : 0.2959   Max.   : 0.1932   Max.   : 0.6446   Max.   : 0.4284   Max.   : 0.6446    Max.   : 0.4284  
 tBodyAccJerkMagMean tBodyAccJerkMagStd tBodyGyroMagMean  tBodyGyroMagStd   tBodyGyroJerkMagMean tBodyGyroJerkMagStd
 Min.   :-0.9928     Min.   :-0.9946    Min.   :-0.9807   Min.   :-0.9814   Min.   :-0.99732     Min.   :-0.9977    
 1st Qu.:-0.9807     1st Qu.:-0.9765    1st Qu.:-0.9461   1st Qu.:-0.9476   1st Qu.:-0.98515     1st Qu.:-0.9805    
 Median :-0.8168     Median :-0.8014    Median :-0.6551   Median :-0.7420   Median :-0.86479     Median :-0.8809    
 Mean   :-0.6079     Mean   :-0.5842    Mean   :-0.5652   Mean   :-0.6304   Mean   :-0.73637     Mean   :-0.7550    
 3rd Qu.:-0.2456     3rd Qu.:-0.2173    3rd Qu.:-0.2159   3rd Qu.:-0.3602   3rd Qu.:-0.51186     3rd Qu.:-0.5767    
 Max.   : 0.4345     Max.   : 0.4506    Max.   : 0.4180   Max.   : 0.3000   Max.   : 0.08758     Max.   : 0.2502    
 fBodyAccMeanX     fBodyAccMeanY      fBodyAccMeanZ      fBodyAccStdX      fBodyAccStdY       fBodyAccStdZ    
 Min.   :-0.9952   Min.   :-0.98903   Min.   :-0.9895   Min.   :-0.9966   Min.   :-0.99068   Min.   :-0.9872  
 1st Qu.:-0.9787   1st Qu.:-0.95361   1st Qu.:-0.9619   1st Qu.:-0.9820   1st Qu.:-0.94042   1st Qu.:-0.9459  
 Median :-0.7691   Median :-0.59498   Median :-0.7236   Median :-0.7470   Median :-0.51338   Median :-0.6441  
 Mean   :-0.5758   Mean   :-0.48873   Mean   :-0.6297   Mean   :-0.5522   Mean   :-0.48148   Mean   :-0.5824  
 3rd Qu.:-0.2174   3rd Qu.:-0.06341   3rd Qu.:-0.3183   3rd Qu.:-0.1966   3rd Qu.:-0.07913   3rd Qu.:-0.2655  
 Max.   : 0.5370   Max.   : 0.52419   Max.   : 0.2807   Max.   : 0.6585   Max.   : 0.56019   Max.   : 0.6871  
 fBodyAccJerkMeanX fBodyAccJerkMeanY fBodyAccJerkMeanZ fBodyAccJerkStdX  fBodyAccJerkStdY  fBodyAccJerkStdZ   
 Min.   :-0.9946   Min.   :-0.9894   Min.   :-0.9920   Min.   :-0.9951   Min.   :-0.9905   Min.   :-0.993108  
 1st Qu.:-0.9828   1st Qu.:-0.9725   1st Qu.:-0.9796   1st Qu.:-0.9847   1st Qu.:-0.9737   1st Qu.:-0.983747  
 Median :-0.8126   Median :-0.7817   Median :-0.8707   Median :-0.8254   Median :-0.7852   Median :-0.895121  
 Mean   :-0.6139   Mean   :-0.5882   Mean   :-0.7144   Mean   :-0.6121   Mean   :-0.5707   Mean   :-0.756489  
 3rd Qu.:-0.2820   3rd Qu.:-0.1963   3rd Qu.:-0.4697   3rd Qu.:-0.2475   3rd Qu.:-0.1685   3rd Qu.:-0.543787  
 Max.   : 0.4743   Max.   : 0.2767   Max.   : 0.1578   Max.   : 0.4768   Max.   : 0.3498   Max.   :-0.006236  
 fBodyGyroMeanX    fBodyGyroMeanY    fBodyGyroMeanZ    fBodyGyroStdX     fBodyGyroStdY     fBodyGyroStdZ    
 Min.   :-0.9931   Min.   :-0.9940   Min.   :-0.9860   Min.   :-0.9947   Min.   :-0.9944   Min.   :-0.9867  
 1st Qu.:-0.9697   1st Qu.:-0.9700   1st Qu.:-0.9624   1st Qu.:-0.9750   1st Qu.:-0.9602   1st Qu.:-0.9643  
 Median :-0.7300   Median :-0.8141   Median :-0.7909   Median :-0.8086   Median :-0.7964   Median :-0.8224  
 Mean   :-0.6367   Mean   :-0.6767   Mean   :-0.6044   Mean   :-0.7110   Mean   :-0.6454   Mean   :-0.6577  
 3rd Qu.:-0.3387   3rd Qu.:-0.4458   3rd Qu.:-0.2635   3rd Qu.:-0.4813   3rd Qu.:-0.4154   3rd Qu.:-0.3916  
 Max.   : 0.4750   Max.   : 0.3288   Max.   : 0.4924   Max.   : 0.1966   Max.   : 0.6462   Max.   : 0.5225  
 fBodyAccMagMean   fBodyAccMagStd    fBodyBodyAccJerkMagMean fBodyBodyAccJerkMagStd fBodyBodyGyroMagMean
 Min.   :-0.9868   Min.   :-0.9876   Min.   :-0.9940         Min.   :-0.9944        Min.   :-0.9865     
 1st Qu.:-0.9560   1st Qu.:-0.9452   1st Qu.:-0.9770         1st Qu.:-0.9752        1st Qu.:-0.9616     
 Median :-0.6703   Median :-0.6513   Median :-0.7940         Median :-0.8126        Median :-0.7657     
 Mean   :-0.5365   Mean   :-0.6210   Mean   :-0.5756         Mean   :-0.5992        Mean   :-0.6671     
 3rd Qu.:-0.1622   3rd Qu.:-0.3654   3rd Qu.:-0.1872         3rd Qu.:-0.2668        3rd Qu.:-0.4087     
 Max.   : 0.5866   Max.   : 0.1787   Max.   : 0.5384         Max.   : 0.3163        Max.   : 0.2040     
 fBodyBodyGyroMagStd fBodyBodyGyroJerkMagMean fBodyBodyGyroJerkMagStd
 Min.   :-0.9815     Min.   :-0.9976          Min.   :-0.9976        
 1st Qu.:-0.9488     1st Qu.:-0.9813          1st Qu.:-0.9802        
 Median :-0.7727     Median :-0.8779          Median :-0.8941        
 Mean   :-0.6723     Mean   :-0.7564          Mean   :-0.7715        
 3rd Qu.:-0.4277     3rd Qu.:-0.5831          3rd Qu.:-0.6081        
 Max.   : 0.2367     Max.   : 0.1466          Max.   : 0.2878 
```


Save to file
------------

Save data table objects to a tab-delimited text file called `tidy_data_with_means.txt`.


```r
f <- file.path(path, "tidy_data_with_means.txt")
write.table(result, f, quote = FALSE, sep = "\t", row.names = FALSE)
```
