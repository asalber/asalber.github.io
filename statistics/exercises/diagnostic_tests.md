---
layout: book
title: Exercises of Probability (Diagnostics Tests)
description: "Colecction of solved exercises"
tags: [Exercises, Statistics, Probability, Diagnostic tests]
share: true
image: dados.jpg
---



## Exercise 1


To evaluate the effectiveness of a diagnosis test, the test was applied to a sample of people with the following results:

$$
\begin{array}{l|cc}
& \mbox{Test }+ & \mbox{Test }- \\
\hline
\mbox{Sick} & 2020 & 80 \\

\mbox{Healthy} & 140 & 7760 \\
\end{array}
$$

Calculate for this test:

1.  The sensitivity and the specificity.
2.  The positive and negative predictive value.
3.  The probability of a correct diagnosis.

<div><button class="solution">Show solution</button></div>
<div id="solution" style="display: none">
Naming $S$ and $H$ to the events of being sick and healthy respectively, <br/>
1. Sensitivity $P(+\vert S)=0.9352$ and specificity $P(-\vert H)=0.9898$. <br/>
2. PPV $P(S\vert +)=0.9619$ and NPV $P(H\vert -)=0.9823$. <br/>
3. $P((S\cap +)\cup (H\cap -)) = P(S\cap +) + P(H\cap -) = 0.978$. 
</div>


## Exercise 2


We know, from a research study, that 10% of people over 50 suffer a particular type or arthritis. We have developed a new method to detect the disease and after clinical trials we observe that if we apply the method to people with arthritis we get a positive result in 85% of cases, while if we apply the method to people without arthritis, we get a positive result in 4% of cases. Answer the following questions:

1.  What is the probability of getting a positive result after applying the method to a random person?
2.  If the result of applying the method to one person has been positive, what is the probability of having arthritis?

<div><button class="solution">Show solution</button></div>
<div id="solution" style="display: none">
Naming $A$ to the event of having arthritis, <br/>
1. $P(+)=0.121$. <br/>
2. $P(A\vert +) = 0.7025$.
</div>

## Exercise 3


We have two different test $A$ and $B$ to diagnose a disease. Test $A$ have a sensitivity of 98% and a specificity of 80%, while test $B$ have a sensitivity of 75% and a specificity of 99%.

1.  What test is better to confirm the disease?
2.  What test is better to rule out the disease?
3.  Often a test is used to discard the presence of the disease in a large amount of people apparently healthy. This type of test is known as *screening test*. What test will work better as a screening test? What are the predictive values of this test if the prevalence of the disease is 0.01? And if the prevalence of de disease is 0.2?
4.  The positive predictive value of a screening test used to be not too high. How can combine tests $A$ and $B$ to have a higher confidence in the diagnosis of the disease? Calculate the post-test probability of having the disease with the combination of both tests if the outcome of both test is positive for a prevalence of 0.01.

<div><button class="solution">Show solution</button></div>
<div id="solution" style="display: none">
1. Test $B$ cause it has a greater specificity. <br/>
2. Test $A$ cause it has a greater sensitivity. <br/>
3. Test $A$ will perform better as a screening test. <br/>
For a prevalence of $0.01$ the PPV is $P(D\vert +)=0.0472$ and the NPV is $P(\bar D\vert -)=0.9997$. <br/>
For a prevalence of $0.2$ the PPV is $P(D\vert +)=0.5506$ and the NPV is $P(\bar D\vert -)=0.9938$. <br/>
4. First applying test $A$ to everybody and then applying test $B$ to positive cases of test $A$. <br/>
$P(D\vert +_A\cap +_B)=0.7878$.
</div>


