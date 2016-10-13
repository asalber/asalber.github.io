---
layout: book
title: Calculus Manual
description: "Several Variables Differentiable  Calculus"
tags: [Calculus, Geometry, Derivative]
image: cabecera-calculo.jpg
share: true
---

## Vector functions of a single real variable

> **Definition - Vector function of a single real variable**. A *vector function of a single real variable* or *vector field of a scalar variable* is a function that maps every scalar value $t\in D\subseteq \mathbb{R}$ into a vector $(x_1(t),\ldots,x_n(t))$ in $\mathbb{R}^n$:
>
$$
\begin{array}{rccl}
f: & \mathbb{R} & \longrightarrow & \mathbb{R}^n\\
& t & \longrightarrow & (x_1(t),\ldots, x_n(t))
\end{array}
$$
>
where $x_i(t)$, $i=1,\ldots,n$, are real function of a single real variable known as *coordinate functions*.

The most common vector field of scalar variable are in the the real plane $\mathbb{R}^2$, where usually they are represented as
\\[f(t)=x(t)\mathbf{i}+y(t)\mathbf{j},\\]
and in the real space $\mathbb{R}^3$, where usually they are represented as
\\[f(t)=x(t)\mathbf{i}+y(t)\mathbf{j}+z(t)\mathbf{k},\\]

### Graphic representation of vector fields
The graphic representation of a vector field in $\mathbb{R}^2$ is a trajectory in the real plane.

<img class="img-center" src="img/derivatives_n/trajectory_plane.svg" alt="Trajectory of a vector function in the plane." width="300">

The graphic representation of a vector field in $\mathbb{R}^3$ is a trajectory in the real space.

<img class="img-center" src="img/derivatives_n/trajectory_space.svg" alt="Trajectory of a vector function in the space." width="350">

## Derivative of a vector field

The concept of derivative as the limit of the average rate of change of a function can be extended easily to vector fields.

> **Definition - Derivative of a vectorial field**. A vectorial field $f(t)=(x_1(t),\ldots,x_n(t))$ is *differentiable* at a point $t=a$ if the limit
\\[\lim_{\Delta t\rightarrow 0} \frac{f(a+\Delta t)-f(a)}{\Delta t}.\\]
exists. In such a case, the value of the limit is known as the *derivative* of the vector field at $a$, and it is written $f'(a)$.

Many properties of real functions of a single real variable can be extended to vector fields through its component functions. Thus, for instance, the derivative of a vector field can be computed from the derivatives of its component functions.

> **Theorem**. Given a vector field $f(t)=(x_1(t),\ldots,x_n(t))$, if $x_i(t)$ is differentiable at $t=a$ for all $i=1,\ldots,n$, then $f$ is differentiable at $a$ and its derivative is
\\[f'(a)=(x_1'(a),\ldots,x_n'(a))\\]

The proof for a vectorial field in $\mathbb{R}^2$ is easy.
$$\begin{aligned}
f'(a)&=\lim_{\Delta t\rightarrow 0} \frac{f(a+\Delta t)-f(a)}{\Delta t} = \lim_{\Delta t\rightarrow 0} \frac{(x(a+\Delta t),y(a+\Delta t))-(x(a),y(a))}{\Delta t} =\\
&=  \lim_{\Delta t\rightarrow 0} \left(\frac{x(a+\Delta t)-x(a)}{\Delta t},\frac{y(a+\Delta t)-y(a)}{\Delta t}\right) =\\
&= \left(\lim_{\Delta t\rightarrow 0}\frac{x(a+\Delta t)-x(a)}{\Delta t},\lim_{\Delta t\rightarrow 0}\frac{y(a+\Delta t)-y(a)}{\Delta t}\right) =
(x'(a),y'(a)).
\end{aligned}
$$

### Kinematics: Curvilinear motion

The notion of derivative as a velocity along a trajectory in the real line can be generalized to a trajectory in any euclidean space $\mathbb{R}^n$.

In case of a two dimensional space $\mathbb{R}^2$, if $f(t)$ describes the position of a moving object in the real plane at any time $t$, taking as reference the coordinates origin $O$ and the unitary vectors $\{\mathbf{i}=(1,0),\mathbf{j}=(0,1)\}$, we can represent the position of the moving object $P$ at every moment $t$ with a vector $\vec{OP}=x(t)\mathbf{i}+y(t)\mathbf{j}$, where the coordinates

$$
\begin{cases}
x=x(t)\\
y=y(t)
\end{cases}
\quad
t\in \mbox{Dom}(f)
$$

are the *coordinate functions* of $f$.

<img class="img-center" src="img/derivatives_n/curvilinear_motion.svg" alt="Trajectory of a curvilinear motion in the plane." width="500">

### Velocity of a curvilinear motion in the plane

In this context the derivative of a trajectory $f'(a)=(x_1'(a),\ldots,x_n'(a))$ is the *velocity* vector of the trajectory $f$ at moment $t=a$.

**Example**. Given the trajectory $f(t) = (\cos t,\sin t)$, $t\in \mathbb{R}$, whose image is the unit circumference centered in the coordinate origin, its coordinate functions are $x(t) = \cos t$, $y(t) = \sin t$, $t\in \mathbb{R}$, and its velocity is \\[\mathbf{v}=f'(t)=(x'(t),y'(t))=(-\sin t, \cos t).\\] In the moment $t=\pi/4$, the object is in position $f(\pi/4) = (\cos(\pi/4),\sin(\pi/4)) =(\sqrt{2}/2,\sqrt{2}/2)$ and it is moving with a velocity $\mathbf{v}=f'(\pi/4)=(-\sin(\pi/4),\cos(\pi/4))=(-\sqrt{2}/2,\sqrt{2}/2)$.

<img class="img-center" src="img/derivatives_n/circumference_trajectory.svg" alt="Trajectory of a vector function in the space." width="300">

Observe that the module of the velocity vector is always 1 as $\vert\mathbf{v}\vert=\sqrt{(-\sin t)^2+(\cos t)^2}=1$.

## Tangent line to a trajectory

### Tangent line to a trajectory in the plane

#### Vectorial equation

Given a trajectory $f(t)$ in the real plane, the vectors that are parallel to the velocity $\mathbf{v}$ at a moment $a$ are called *tangent vectors* to the trajectory $f$ at the moment $a$, and the line passing through $P=f(a)$ directed by $\mathbf{v}$ is the tangent line to the graph of $f$ at the moment $a$.

> **Definition - Tangent line to a trajectory**. Given a trajectory $f(t)$ in the real plane $\mathbb{R}^2$, the *tangent line* to to the graph of $f$ at $a$ is the line with equation
>
$$
\begin{aligned}
l:(x,y) &= f(a)+tf'(a) = (x(a),y(a))+t(x'(a),y'(a))\\
& = (x(a)+tx'(a),y(a)+ty'(a)).
\end{aligned}
$$

**Example**. We have seen that for the trajectory $f(t) = (\cos t,\sin t)$, $t\in \mathbb{R}$, whose image is the unit circumference centered at the coordinate origin, the object position at the moment $t=\pi/4$ is $f(\pi/4)=(\sqrt{2}/2,\sqrt{2}/2)$ and its velocity $\mathbf{v}=(-\sqrt{2}/2,\sqrt{2}/2)$. Thus the equation of the tangent line to $f$ at that moment is

$$
\begin{aligned}
l: (x,y) & = f(\pi/4)+t\mathbf{v} =
\left(\frac{\sqrt{2}}{2},\frac{\sqrt{2}}{2}\right)+t\left(\frac{-\sqrt{2}}{2},\frac{\sqrt{2}}{2}\right) =\\
& =\left(\frac{\sqrt{2}}{2}-t\frac{\sqrt{2}}{2},\frac{\sqrt{2}}{2}+t\frac{\sqrt{2}}{2}\right).
\end{aligned}
$$

#### Cartesian and point-slope equations

From the vectorial equation of the tangent to a trajectory $f(t)$ at the moment $t=a$ we can get the coordinate functions

$$
\begin{cases}
x=x(a)+tx'(a)\\
y=y(a)+ty'(a)
\end{cases}
\quad t\in \mathbb{R},
$$

and solving for $t$ and equalling both equations we get the *Cartesian equation* of the tangent
\\[\frac{x-x(a)}{x'(a)}=\frac{y-y(a)}{y'(a)},\\]
if $x'(a)\neq 0$ and $y'(a)\neq 0$.

From this equation it is easy to get the *point-slope equation* of the tangent
\\[y-y(a)=\frac{y'(a)}{x'(a)}(x-x(a)).\\]

**Example**. Using the vectorial equation of the tangent of the previous example
\\[l: (x,y)=\left(\frac{\sqrt{2}}{2}-t\frac{\sqrt{2}}{2},\frac{\sqrt{2}}{2}+t\frac{\sqrt{2}}{2}\right),\\]
its Cartesian equation is \\[\frac{x-\sqrt{2}/2}{-\sqrt{2}/2} = \frac{y-\sqrt{2}/2}{\sqrt{2}/2}\\]
and the point-slope equation is
\\[y-\sqrt{2}/2 = \frac{-\sqrt{2}/2}{\sqrt{2}/2}(x-\sqrt{2}/2) \Rightarrow y=-x+\sqrt{2}.\\]

### Normal line to a trajectory in the plane

We have seen that the tangent line to a trajectory $f(t)$ at $a$ is the line passing through the point $P=f(a)$ directed by the velocity vector $\mathbf{v}=f'(a)=(x'(a),y'(a))$. If we take as direction vector a vector orthogonal to $\mathbf{v}$, we get another line that is known as *normal line* to the trajectory.

> **Definition - Normal line to a trajectory**. Given a trajectory $f(t)$ in the real plane $\mathbb{R}^2$, the *normal line* to the graph of $f$ at moment $t=a$ is the line with equation
\\[l: (x,y)=(x(a),y(a))+t(y'(a),-x'(a)) = (x(a)+ty'(a),y(a)-tx'(a)).\\]

The Cartesian equation is
\\[\frac{x-x(a)}{y'(a)} = \frac{y-y(a)}{-x'(a)},\\]
and the point-slope equation is
\\[y-y(a) = \frac{-x'(a)}{y'(a)}(x-x(a)).\\]
The normal line is always perpendicular to the tangent line as their direction vectors are orthogonal.

**Example**. Considering again the trajectory of the unit circumference $f(t) = (\cos t,\sin t)$, $t\in \mathbb{R}$, the normal line to the graph of $f$ at moment $t=\pi/4$ is

$$
\begin{aligned}
l: (x,y)&=(\cos(\pi/2),\sin(\pi/2))+t(\cos(\pi/2),\sin(\pi/2)) =\\
&= \left(\frac{\sqrt{2}}{2},\frac{\sqrt{2}}{2}\right)+t\left(\frac{\sqrt{2}}{2},\frac{\sqrt{2}}{2}\right)
=\left(\frac{\sqrt{2}}{2}+t\frac{\sqrt{2}}{2},\frac{\sqrt{2}}{2}+t\frac{\sqrt{2}}{2}\right),
\end{aligned}
$$

the Cartesian equation is
\\[\frac{x-\sqrt{2}/2}{\sqrt{2}/2} = \frac{y-\sqrt{2}/2}{\sqrt{2}/2},\\]
and the point-slope equation is
\\[y-\sqrt{2}/2 = \frac{\sqrt{2}/2}{\sqrt{2}/2}(x-\sqrt{2}/2) \Rightarrow y=x.\\]

### Tangent and normal lines to a function

A particular case of tangent and normal lines to a trajectory are the tangent and normal lines to a function of one real variable. For every function $y=f(x)$, the trajectory that trace its graph is \\[g(x) = (x,f(x))  \quad x\in \mathbb{R},\\] and its velocity is \\[g'(x) = (1,f'(x)),\\] so that the tangent line to $g$ at the moment $a$ is \\[\frac{x-a}{1} = \frac{y-f(a)}{f'(a)} \Rightarrow y-f(a) = f'(a)(x-a),\\] and the normal line is \\[\frac{x-a}{f'(a)} = \frac{y-f(a)}{-1} \Rightarrow y-f(a) = \frac{-1}{f'(a)}(x-a),\\]

**Example**. Given the function $y=x^2$, the trajectory that traces its graph is $g(x)=(x,x^2)$ and its velocity is $g'(x)=(1,2x)$. At the moment $x=1$ the trajectory passes through the point $(1,1)$ with a velocity $(1,2)$. Thus, the tangent line at that moment is
\\[\frac{x-1}{1} = \frac{y-1}{2} \Rightarrow y-1 = 2(x-1) \Rightarrow y = 2x-1,\\]
and the normal line is
\\[\frac{x-1}{2} = \frac{y-1}{-1} \Rightarrow y-1 = \frac{-1}{2}(x-1) \Rightarrow y = \frac{-x}{2}+\frac{3}{2}.\\]

### Tangent line to a trajectory in the space

The concept of tangent line to a trajectory can be easily extended from the real plane to the three-dimensional space $\mathbb{R}^3$.

If $f(t)=(x(t),y(t),z(t))$, $t\in \mathbb{R}$, is a trajectory in the real space $\mathbb{R}^3$, then at the moment $a$, the moving object that follows this trajectory will be at the position $P=(x(a),y(a),z(a))$ with a velocity $\mathbf{v}=f'(t)=(x'(t),y'(t),z'(t))$. Thus, the tangent line to $f$ at this moment have the following vectorial equation

$$
\begin{aligned}
l&: (x,y,z)=(x(a),y(a),z(a))+t(x'(a),y'(a),z'(a)) =\\
&= (x(a)+tx'(a),y(a)+ty'(a),z(a)+tz'(a)),
\end{aligned}
$$

and the Cartesian equations are
\\[\frac{x-x(a)}{x'(a)}=\frac{y-y(a)}{y'(a)}=\frac{z-z(a)}{z'(a)},\\]
provided that $x'(a)\neq 0$, $y'(a)\neq 0$ y $z'(a)\neq 0$.

**Example**. Given the trajectory $f(t)=(\cos t, \sin t, t)$, $t\in \mathbb{R}$ in the real space, at the moment $t=\pi/2$ the trajectory passes through the point
\\[f(\pi/2)=(\cos(\pi/2),\sin(\pi/2),\pi/2)=(0,1,\pi/2),\\]
with velocity
\\[\mathbf{v}=f'(\pi/2)=(-\sin(\pi/2),\cos(\pi/2), 1)=(-1,0,1),\\]
and the tangent line to the graph of $f$ at that moment is
\\[l:(x,y,z)=(0,1,\pi/2)+t(-1,0,1) = (-t,1,t+\pi/2).\\]

<img class="img-center" src="img/derivatives_n/tangent_trajectory_space.svg" alt="Tangent line to a trajectory in the space." width="400">

<img src="/images/geogebra.png" /> **<a href="https://ggbm.at/Q2C7EfBn" target="_blank">Interactive Example</a>**


### Normal plane to a trajectory in the space

In the three-dimensional space $\mathbb{R}^3$, the normal line to a trajectory is not unique. There are an infinite number of normal lines and all of them are in the normal plane.

If $f(t)=(x(t),y(t),z(t))$, $t\in \mathbb{R}$, is a trajectory in the real space $\mathbb{R}^3$, then at the moment $a$, the moving object that follows this trajectory will be at the position $P=(x(a),y(a),z(a))$ with a velocity $\mathbf{v}=f'(t)=(x'(t),y'(t),z'(t))$. Thus, using the velocity vector as normal vector the normal plane to $f$ at this moment have the following vectorial equation

$$
\begin{aligned}
\Pi &: (x-x(a),y-y(a),z-z(a))(x'(a),y'(a),z'(a)) = 0\\
&= x'(a)(x-x(a))+y'(a)(y-y(a))+z'(a)(z-z(a))=0.
\end{aligned}
$$

**Example**. For the trajectory of the previous example $f(t)=(\cos t, \sin t, t)$, $t\in \mathbb{R}$, at the moment $t=\pi/2$ the trajectory passes through the point
\\[f(\pi/2)=(\cos(\pi/2),\sin(\pi/2),\pi/2)=(0,1,\pi/2),\\]
with velocity
\\[\mathbf{v}=f'(\pi/2)=(-\sin(\pi/2),\cos(\pi/2), 1)=(-1,0,1),\\]
and normal plane to the graph of $f$ at that moment is
\\[\Pi:\left(x-0,y-1,z-\frac{\pi}{2}\right)(-1,0,1) =0 \Leftrightarrow -x+z-\frac{\pi}{2}=0.\\]

<img class="img-center" src="img/derivatives_n/normal_plane_trajectory_space.svg" alt="Normal plane to a trajectory in the space." width="400">

<img src="/images/geogebra.png" /> **<a href="https://ggbm.at/Q2C7EfBn" target="_blank">Interactive Example</a>**

## Functions of several variables

A lot of problems in Geometry, Physics, Chemistry, Biology, etc. involve a variable that depend on two or more variables:

-   The area of a triangle depends on two variables that are the base and height lengths.

-   The volume of a perfect gas depends on two variables that are the pressure and the temperature.

-   The way travelled by an object free falling depends on a lot of variables: the time, the area of the cross section of the object, the latitude and longitude of the object, the height above the sea level, the air pressure, the air temperature, the speed of wind, etc.

These dependencies are expressed with functions of several variables.

> **Definition - Functions of several real variables**. A *function of $n$ real variables* or a *scalar field* from a set $A_1\times \cdots \times A_n\subseteq \mathbb{R}^n$ in a set $B\subseteq \mathbb{R}$, is a relation that maps any tuple $(a_1,\ldots,a_n)\in A_1\times \cdots\times A_n$ into a unique element of $B$, denoted by $f(a_1,\ldots,a_n)$, that is knwon as the *image* of $(a_1,\ldots,a_n)$ by $f$.
>
$$
\begin{array}{lccc}
f: & A_1\times\cdots\times A_n & \longrightarrow & B\\
   &(a_1,\ldots,a_n) & \longrightarrow & f(a_1,\ldots,a_n)
\end{array}
$$

- The area of a triangle is a real function of two real variables
\\[f(x,y)=\frac{xy}{2}.\\]

- The volume of a perfect gas is a real function of two real variables
\\[v=f(t,p)=\frac{nRt}{p},\quad \mbox{with $n$ and $R$ constants.}\\]

### Graph of a function of two variables

The graph of a function of two variables $f(x,y)$ is a surface in the real space $\mathbb{R}^3$ where every point of the surface has coordinates $(x,y,z)$, with $z=f(x,y)$.

<img class="img-center" src="img/derivatives_n/paraboloid.svg" alt="Graph of a two-variables function" width="300">

**Example**. The function $f(x,y)=\dfrac{xy}{2}$ that measures the area of a triangle of base $x$ and height $y$ has the graph below.

<img class="img-center" src="img/derivatives_n/area_triangle_graph.svg" alt="Graph of the function that measures the area of a triangle." width="400">

The function $\displaystyle f(x,y)=\frac{\sin(x^2+y^2)}{\sqrt{x^2+y^2}}$ has the peculiar graph below.

<img class="img-center" src="img/derivatives_n/water_drop_graph.svg" alt="Surface of a drop of water." width="400">

<img src="/images/geogebra.png" /> **<a href="https://ggbm.at/K3xnQRY8" target="_blank">Interactive Example</a>**
