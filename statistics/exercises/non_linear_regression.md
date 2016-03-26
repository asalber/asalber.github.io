---
layout: book
title: Exercises of Non-linear Regression
description: "Colecction of solved exercises"
tags: [Exercises, Statistics]
share: true
image: dados.jpg
---



## Exercise 1
A dietary center is testing a new diet in sample of 12 persons. The data below are the number of days of diet and the weight loss (in Kg) until them for every person.

    (33 , 3.9), (51 , 5.9), (30 , 3.2), (55 , 6.0), (38 , 4.9), (62 ,
    6.2),\
    (35 , 4.5), (60 , 6.1), (44 , 5.6), (69 , 6.2), (47 , 5.8), (40
    , 5.3)

    1.  Draw the scatter plot. According to the point cloud, what type
        of regression model explains better the relation between the
        weight loss and the days of diet?

    2.  Construct the linear regression model and the logarithmic
        regression model of the weight loss on the number of days
        of diet.

    3.  Use the best model to predict the weight that will lose a person
        after 100 days of diet. Is this prediction reliable?

    Use the following sums ($X$=days of diet and $Y$=weight loss):
    $\sum x_i=564$ days, $\sum \log(x_i)=45.8086$ $\log(\mbox{days})$,
    $\sum y_j=63.6$ Kg, $\sum x_i^2=28234$ days$^2$,
    $\sum \log(x_i)^2=175.6603$ $\log(\mbox{days})^2$,
    $\sum y_j^2=347.7$ Kg$^2$, $\sum x_iy_j=3108.5$ days$\cdot$Kg,
    $\sum \log(x_i)y_j=245.4738$ $\log(\mbox{days})\cdot$Kg.

## Exercise 2
The concentration of a drug in blood, in mg/dl, depends on time, in hours, according to the data below.

      -------------------- ---- ---- ---- ---- ---- ----- -----
      Drug concentration      2    3    4    5    6     7     8
      Hours                  25   36   48   64   86   114   168
      -------------------- ---- ---- ---- ---- ---- ----- -----

    1.  Construct the linear regression model of drug concentration
        on time.

    2.  Construct the exponential regression model of drug concentration
        on time.

    3.  Use the best regression model to predict the drug concentration
        after $4.8$ hours? Is this prediction reliable? Justify
        the answer.

    Use the following sums ($C$=Drug concentration and $T$=time):
    $\sum c_i=35$ mg/dl, $\sum \log(c_i)=10.6046$ $\log(\mbox{mg/dl})$,
    $\sum t_j=541$ hours, $\sum \log(t_j)= 29.147$ $\log(\mbox{hours})$,
    $\sum c_i^2=203$ (mg/dl)$^2$, $\sum \log(c_i)^2=17.5206$
    $\log(\mbox{mg/dl})^2$, $\sum t_j^2=56937$ hours$^2$,
    $\sum \log(t_j)^2=124.0131$ $\log(\mbox{hours})^2$,
    $\sum c_it_j=3328$ mg/dl$\cdot$hours, $\sum c_i\log(t_j)=154.3387$
    mg/dl$\cdot\log(\mbox{hours})$, $\sum \log(c_i)t_j=951.6961$
    $\log(\mbox{mg/dl})\cdot$hours, $\sum
    \log(c_i)\log(t_j)=46.08046$
    $\log(\mbox{mg/dl})\cdot\log(\mbox{hours})$.

## Exercise 3
A researcher is studying the relation between the obesity and the response to pain. Te obesity is measured as the percentage over the ideal weight, and the response to pain as the nociceptive flexion pain threshold. The results of the study appears in the table below.
    $$\begin{array}{lrrrrrrrrrr}
    \toprule
    \mbox{Obesity} & 89 & 90 & 75 & 30 & 51 & 75 & 62 & 45 & 90 & 20\\
    \mbox{Pain threshold} & 10 & 12 & 4 & 4.5 & 5.5 & 7 & 9 & 8 & 15 & 3\\
    \bottomrule
    \end{array}$$

    1.  According to the scatter plot, what model explains better the
        relation of the response to pain on the obesity?

    2.  According to the best regression model, what is the response to
        pain expected for a person with an obesity of 50%? Is this
        prection reliable?

    3.  According to the best regression model, what is the expected
        obesity for a person with a pain threshold of 10? Is this
        prediction reliable?

    Use the following sums ($X$=Obesity and $Y$=Pain threshold):
    $\sum x_i=627$, $\sum \log(x_i)=40.3858$, $\sum y_j=78$,
    $\sum \log(y_j)=19.4119$, $\sum x_i^2=45141$,
    $\sum \log(x_i)^2=165.4516$, $\sum y_j^2=738.5$, $\sum
    \log(y_j)^2=40.0458$, $\sum x_iy_j=5538.5$,
    $\sum x_i\log(y_j)=1306.051$, $\sum \log(x_i)y_j=327.3887$, $\sum
    \log(x_i)\log(y_j)=80.1831$.
