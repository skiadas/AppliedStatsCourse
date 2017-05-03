# Density Curves

## Reading

- Section 2.5


## Practice Problems

2.6.5 (page 125)
  ~ 2.43, 2.44

## Notes

- The book refers to them as "continuous probability functions".
- Think of them like "smooth histograms".
- Used to describe large (infinite) populations.
- Key property:

    > Area under the curve and between $v_1$, $v_2$ is equal to the percent of data values that are between $v_1$ and $v_2$.
    >
    > Total area under curve equals 1 (100%).

- To really compute things we would need to know the equation of this curve, and do some Calculus.
- Distributions have *parameters* that specify their exact shape.
- Some examples of distributions that are easy to work with:

    Uniform
      ~ Straight line from $a$ to $b$. Represents the idea that all numbers between $a$ and $b$ are equally likely. For example most computers are equipped with "random number generators" that produce uniformly random numbers between $0$ and $1$.

    Normal
      ~ Has well known formula and tables to use. We will see this in next section. Plays a dominant role in statistics because of the "Central Limit Theorem" we will discuss later.

### Uniform Distribution

- Graph is a straight line at height $\frac{1}{b-a}$, extending from $x=a$ and $x=b$.
- Can compute areas as they are just rectangles.

    Shape
      ~ Symmetric

    Mean
      ~ $\frac{a+b}{2}$

    Median
      ~ $\frac{a+b}{2}$

    Std Dev
      ~ $\sqrt{\frac{(b-a)^2}{12}}$

    Quartiles
      ~ One fourth and three fourths of the way from $a$ to $b$.

    IQR
      ~ $\frac{b-a}{2}$

Example: Consider the uniform distribution from $a=1$ to $b=3$.

- Draw the graph.
- Compute using the graph the amount of data between $x=1.2$ and $x=2.9$.
- Find using the graph the location of the 90th percentile.
- Compute the mean, standard deviation, and IQR.
