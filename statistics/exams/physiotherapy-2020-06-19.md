---
layout: book
title: Statistics exam
description: "Solution of the exam"
tags: [Exam, Statistics, Biostatistics, Physiotherapy]
share: true
image: cabecera-estadistica.jpg
---

Degrees: Physiotherapy  
Date: June 19, 2020

# Descriptive Statistics and Regression

## Question 1

To see if the confinement due to COVID-19 has influenced the performance of a course, the number of failed subjects of each student in the current course and in the previous year course has been counted, obtaining the table below.

$$
\begin{array}{crr}
\mbox{Failed subjects} & \mbox{Previous year course} & \mbox{Current course} \\ 
\hline
0 & 7 & 8 \\
1 & 15 & 12 \\
2 & 11 & 8 \\
3 & 5 & 7 \\
4 & 4 & 3 \\
5 & 2 & 2 \\
6 & 1 & 2 \\
8 & 0 & 1 \\
\hline
\end{array}$$

1.  Draw the box plots of the failed subjects in the current and the previous year courses and compare them.

2.  Can we assume that both samples come from a normal population?

3.  In which sample the mean is more representative?

4.  Which number of failed subjects is greater, 7 in the current course or 6 in the previous year course?

Use the following sums for the computations:  
Previous year course: $\sum x_in_i=84$, $\sum x_i^2n_i=254$, $\sum (x_i-\bar x)^3n_i=122.99$ y $\sum (x_i-\bar x)^4n_i=669.21$.  
Current course: $\sum y_in_i=91$, $\sum y_i^2n_i=341$, $\sum (y_i-\bar y)^3n_i=301.16$ y $\sum (y_i-\bar y)^4n_i=2012.88$.

<div><button class="solution">Show solution</button></div>
<div id="solution" style="display: none">
1. <img src="img/des-gen-12-box-plot-scores.svg" title="Box plot of scores" alt="Box plot of scores" style="display: block; margin: auto;" width="600" /><br/>
Both distributions are pretty similar. The central dispersion is the same and both are right skewed. The only difference is that
there is an outlier in the current year distribution.<br/>
2. Previous year course: $\bar x=1.8667$, $s^2=2.16$, $s=1.4697$, $g_1=0.8609$ and $g_2=0.1874$.<br/>
Current course: $\bar y=2.1163$, $s^2=3.4516$, $s=1.8578$, $g_1=1.0922$ and $g_2=0.9292$.<br/>
As the coefficients of skewness and kurtosis are between -2 and 2, we can assume that both distributions come from a normal
distribution.<br/>
3. Previous year course: $cv=0.7873$.<br/>
Current year: $cv=0.8779$.<br/>
Thus, the mean is more representative in the previous year course, since the coefficient of variation is smaller.<br/>
4. Previous year course: $z(6)=2.8124$.<br/>
Current course: $z(7)=2.6287$.<br/>
Thus, 7 failed subjects in the current course is relatively less than 6 in the previous year course, since the standard score is
smaller.
</div>

## Question 2

A study tries to develop a new technique for detecting a certain antibody. For this, a piezoelectric immunosensor is used, which allows to measure the change in the signal in Hz by varying the concentration of the antibody ($\mu$g/ml). The table below presents
the data collected.

$$
\begin{array}{lrrrrrrr}
\hline
\mbox{Concentration ($\mu$g/ml)} & 5 & 8 & 20 & 35 & 50 & 80 & 110 \\
\mbox{Signal (Hz)} & 50 & 70 & 100 & 150 & 170 & 190 & 200 \\
\hline
\end{array}$$

1. Compute the logarithmic model of the change in the signal on the concentration of the antibodies.

2. It was observed that at a concentration of 100 $\mu$g/ml the change in signal tends to stabilize. Predict the value of the signal corresponding to such concentration using the logarithmic model.

3. Predict the antibody concentration that corresponds to a change in the signal of 120 using the exponential model.

Use the following sums for the computations ($X$=Concentration and $Y$=Signal):  
$\sum x_i=308$ Hz, $\sum \log(x_i)=23.2345$ $\log(\mbox{Hz})$, $\sum y_j=930$ $\mu$g/ml, $\sum \log(y_j)=33.4575$ $\log(\mbox{$\mu$g/ml})$,  
$\sum x_i^2=22714$ Hz$^2$, $\sum \log(x_i)^2=85.1299$ $\log(\mbox{Hz})^2$, $\sum y_j^2=144900$ $\mu$g/ml$^2$, $\sum \log(y_j)^2=161.6475$ $\log(\mbox{$\mu$g/ml})^2$,  
$\sum x_iy_j=53760$ Hz$\cdot\mu$g/ml, $\sum x_i\log(y_j)=1580.3905$ Hz$\cdot\log(\mbox{$\mu$g/ml})$, $\sum \log(x_i)y_j=3496.6333$ $\log(\mbox{Hz})\mu$g/ml, $\sum \log(x_i)\log(y_j)=114.7297$ $\log(\mbox{Hz})\log(\mbox{$\mu$g/ml})$.

<div><button class="solution">Show solution</button></div>
<div id="solution" style="display: none">
1.  $\overline{\log(x)}=3.3192$ log($\mu$g/ml), $s_{\log(x)}^2=1.1442$ log($\mu$g/ml)$^2$.<br/>
$\bar y=132.8571$ Hz, $s_y^2=3048.9796$ Hz$^2$.<br/>
$s_{\log(x)y}=58.5379$ log($\mu$g/ml)Hz.<br/>
Logarithmic regression model: $y=-36.9501+51.1589\log(x)$.<br/>
2. Prediction: $y(100)=198.6453$ Hz.<br/>
3. Exponential regression model: $y=e^{0.7685+0.0192y}$.<br/>
Prediction: $y(120)=21.5929$ $\mu$g/ml.
</div>

# Probability and Random Variables

## Question 3
Two symptoms of COVID-19 are fever and cough. We know that 30% of people with COVID-19 cough and 20% have fever and cough. Also, if
somebody with COVID-19 have fever then the probability of coughing 0.5.

1. Construct the probability tree for the sample space of the random experiment consisting in picking a random person with COVID-19 and measuring the symptoms that he or she have.

2. Calculate the probability of having any of the symptoms.

3. Calculate the probability of having only cough.

4. Calculate the probability of having only fever.

5. Calculate the probability no fever nor cough.

6. Are the symptoms dependent or independent?

<div><button class="solution">Show solution</button></div>
<div id="solution" style="display: none">
Let $C$ and $F$ be the events of having cough and fever respectively. According to the statement $P(C)=0.3$, $P(C\cap F)=0.2$ and $P(C|F)=0.5$.<br/>
2. $P(C\cup F) = 0.5$.<br/>
3. $P(C\cap \overline F) = 0.1$.<br/>
4. $P(\overline C \cap F) = 0.2$.<br/>
5. $P(\overline C \cap \overline F) = 0.5$.<br/>
6. The events are dependent since $P(C)\neq P(C|F)$.
</div>

## Question 4

The sensitivity and specificity of a diagnostic test are 0.58 and 0.01, respectively, and the probability of a true positive is 0.02.

1. Calculate the prevalence of the disease.

2. Calculate predictive values.

3. Is the test more useful to rule out or confirm the disease?

4. If we have 10 non-sick patients, what is the probability that more than 9 have a misdiagnosis?

5. If we have 60 patients, what is the probability that at least two of them have a correct diagnosis?

<div><button class="solution">Show solution</button></div>
<div id="solution" style="display: none">
1. $P(D) = 0.0345$.<br/>
2. $PPV = P(D|+) = 0.0205$ and $NPV = P(\overline D|-) = 0.4$.<br/>
3. The test is not helpful to confirm nor to rule out the disease, since both the positive and the negative predictive values are
below 0.5.<br/>
4. Let $X$ be the number non sick patients with a positive outcome, then $X\sim B(10, 0.99)$, and $P(X\geq 9)=0.9957$.<br/>
5. Let $Y$ be the number of patients with a right diagnose, then $Y\sim B(60, 0.0297)\approx P(1.7793)$, and $P(Y\geq 2)=0.531$.
</div>

## Question 5

The time required to cure a basketball injury with a rehabilitation technique follows a normal distribution with quartiles $Q_1 = 22$ days and $Q_2 = 25$ days.

1. Calculate the mean and standard deviation of the curation time.

2. If a player has just been injured and has to play a match in 30 days, what is the probability that he will miss it?

3. Calculate the interquartile range of the curation time distribution.

<div><button class="solution">Show solution</button></div>
<div id="solution" style="display: none">
1. Let $X$ be the time required to cure the injury, then $X\sim N(25, 4.4478)$.<br/>
2. $P(X > 30) = 0.1305$.<br/>
3. $IQR = 6$ days.
</div>
