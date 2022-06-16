# Soft Voting Algorithm Demonstration Application

## Introduction

The soft voting (soft computing) algorithm is a technology used in complex fault-tolerant systems as an alternative to the conventional majority voting algorithm.

It can be used in sensor (signal) management tasks and as a solution to signals consolidation problem.

Both the conventional and the soft voting scheme are based on majority voting. The major difference is the way the like sensor signals contribute to the consolidated signal. ([Source](https://ieeexplore.ieee.org/document/1039197))

The algorithm has the following advatanges:
1. Easy way to increase the signals quantity. The algorithm allows to add new input signals without the necessity of the logic restructuring unlike conventional majority voting algorithm.
2. Every unit monitors others. It means that a unit can decide whether it trusts to other units (for more details, see below).
3. Developer can set the preferable algorithm behavior even nonlinear required for a task.

On the other hand, hardware implementation is more complex than the majority voting algorithm and requires more target performance.

## Algorithm principles

The algorthm uses all power of the fuzzy logic philosophy.

It is based on three main stages:
1. Determination of trust indices (in terms of fuzzy logic, degrees of membership) of one signal to anothers.
2. Determination of the adequate trust index which will be used in consolidation.
3. Computing the consolidated signal.

All the stages have their own features.

### Trust indices

It will be better to explain the first stage using an analogy with real subjects.

There are 3 subjects which must make a cooperative decision considering data from each of them. In every moment of time, the subjects exchange information.

Every subject is an independent unit which analyzes the data received from other units and forms a number from 0 to 1. This number is called a trust index. The trust index is a formalized expression of trust degree in other units. All units do the same. 

Subject's trust index in itself is always equal to 1.

If other unit tells the same value the given unit does, it means that the trust index in one unit to another is equal to 1. If the difference between values has exceeded a determined number, it means that given subject lost its trust to another unit, and thus, its trust index would be   
equal to 0.

A membership function is used for calculation of a trust index.

The first step is based on using membership function as a tool to compare signals with each other.

Figure shows the example of determination of the trust index of the first signal $x_{1}$ in signals $x_{2}$ and $x_{3}$. The function type is triangular.

The closer value of another unit to the value of the first unit ($x_{1} = 5$) the greater trust index from the side of the first unit.

![](https://github.com/andrewrays/soft-voting-demo/blob/main/images/guide_ti_example.png)

In every round of making a decision, a trust indices matrix is formed where $\mu_{i}(x_{j})$ is a trust index of the signal $i$ to the signal $j$.

![](https://github.com/andrewrays/soft-voting-demo/blob/main/images/guide_ti_matrix.jpg)

Obviously, the main diagonal has only ones as a subject completely trusts itself.

After the formation of the matrix, discussion how every subject trusts other subjects is started. Result of the discussion is a right trust index.

### Selection of right trust index

The right trust index of the signal $i$ to the signal $j$ is a maximum value between trust indices of the signal to other signals without considering trust index to itself.

For instance, the right trust index to the second signal defined as $\mu_{2} = \max{(\mu_{1}(x_{2}), \mu_{3}(x_{2})})$.

Right trust indices participate in the consolidation.

### Consolidation

Consolidation uses one of defuzzification methods.

In the application, the weighted area method is used: $\displaystyle x_{C} = \frac{\sum x_{i}\mu_{i}}{\sum \mu_{i}}$.

## How to use the application

### Application description

The application demonstrates the operation of the soft voting algorithm with 6 signals.

It has three configuration panels:
1. Signals setting,
2. Membership function setting,
3. Signals values.

It also has 6 graphical spaces and Results panel.

### Signals setting panel

The panel allows you to set the number of signals participated in a process with drop down element Quantity. The list is limited by 6 signals.

Signals ranges are specified with editable fields From and To. Left and right limits are not limited.

IMPORTANT: left limit must be less than the right limit, otherwise the error will be occured.

### Membership function setting

With this panel, you can set membership function type and its parameters.

In the application, the following membership function are implemented:
1. [Gaussian](https://www.mathworks.com/help/releases/R2021b/fuzzy/gaussmf.html) 
2. [Generalized bell-shaped](https://www.mathworks.com/help/releases/R2021b/fuzzy/gbellmf.html)
3. [Triangular](https://www.mathworks.com/help/releases/R2021b/fuzzy/trimf.html)
4. [Pi-shaped](https://www.mathworks.com/help/releases/R2021b/fuzzy/pimf.html)
5. [Trapezoidal](https://www.mathworks.com/help/releases/R2021b/fuzzy/trapmf.html)

Used parameters differ from the ones specified in corresponding help page of a function as modified approach is used.

All functions are presetted for being symmetric relative to its own signal value. Thus, with available parameters, one can adjust width of a function and form of each side if it is provided for the specific function.

Membership functions have the following available parameters:

Type                    | Number of parameters | Parameter/-s
----------------------- | -------------------- | ---------------
Gaussian                | 1                    | Width
Generalized bell-shaped | 2                    | Width and form
Triangular              | 1                    | Width
Pi-shaped               | 3                    | Overall width and form of each side
Trapezoidal             | 3                    | Overall width and form of each side

IMPORTANT: for functions with 3 tunable parameters, the first parameter must be larger than the second and third parameter, otherwise the error will be occured.

### Signals values

The panel contains 6 sliders with which you can set the required values.

Limits of the sliders are values specified in Signals setting panel.

Steps are calculated automatically.

### Results

In the Result panel, you can see trust indices $\mu_{i}(x_{j})$ and the final consolidated value $S$.

Each text area contains one row of the trust indices matrix. Number of rows is equal to number of signals.
