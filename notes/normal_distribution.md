# The Normal Distribution

## Reading

- Section 3.1
- Section 3.2


## Practice Problems

3.6.1 (p. 158)
  ~ 3.1, 3.2, 3.3, 3.5, 3.7, 3.9, 3.13, 3.16

3.6.2 (p. 161)
  ~ 3.17, 3.18

## Notes

### Normal Distribution Theory

- The **Normal Distribution** is a bell-shaped curve.
- Complicated equation, but a lot of data follow the distribution, so we have to work with it.
- Its parameters are easy to relate to the data (mean and standard deviation).
- Its equation depends on two parameters:
    - $\mu$ (the mean) controls the center
    - $\sigma$ (the standard deviation) controls the width. More specifically, it is the distance between the center and the "inflection point".
- Denoted $N(\mu, \sigma)$.
- We use Table A or calculator/computer for computing values. We will explain shortly.
- Key step: $z$-scores. $$z = \frac{x-\mu}{\sigma}$$
- They are a simple rescaling of the $x$ values.
- Can also write: $$x = \mu + \sigma \times z$$

    > $z$ scores measure "number of standard deviations away from the mean" that the corresponding $x$ value is.
- $z$-scores follow **Standard Normal Distribution**. With mean $0$ and standard deviation $1$.
- It is those $z$ values we can look up in the table.

In general we deal with two kinds of problems:

Standard
  ~ We are given $x$, and need to find corresponding $p$.

    1. Turn the $x$ into $z$: $z=\frac{x-\mu}{\sigma}$
    2. Look $z$ up in table to find a $p$.
    3. Possibly adjust the $p$ based on the problem.

Reverse
  ~ We are given some sort of $p$, need to find corresponding $x$.

    1. Possibly adjust the $p$ based on the problem.
    2. "Reverse Look" in table for the entry with that $p$, then get corresponding $z$.
    3. Convert the $z$ into an $x$: $x=\mu + \sigma z$

### Standard Direction

- Compute $z$ from $x$ if need be.
- Look $z$ up in the table. For example say $z=2.31$:
    - Find $2.3$ on the left column.
    - Find $0.01$ at the top row.
    - Their intersection is the "p-value".
- p-value represents "the percent of data points below the given $z$ (or $x$)".
- Use that to compute the answer to the actual question.
- For values with more decimals, round to closest end, or average results in two ends.

Practice questions:

- What percent of the data is below $z=1.23$?
- What percent of the data is below $z=-1.5$?
- What percent of the data is below $z=-1.555$?
- What percent of the data is above $z=2.1$?
- What percent of the data is between $z=1.56$ and $z=2.1$?
- If we had a normal distribution with mean $2.5$ and standard deviation $1$, how much data is there between $x=1.2$ and $x=2.7$?

### Inverse Lookup in Table A

- Do this if you know a $p$ and want to find a $z$.
- Make sure the $p$ represents "data below a point". If not convert it.
- Look for the $p$ INSIDE Table A. You will probably find one value bigger than it, right next to a value smaller than it.
- If your $p$ is closer to one of these values, just use the $z$ from that value.
- If it's closer to the middle between, them, use the average of the two $z$ values.

Practice questions:

- At what $z$ is the first quartile?
- At what $z$ is the third quartile?
- What is the IQR for the standard normal distribution?
- Find the $z$ range where the middle 20% of the data lies.
- If we had a normal distribution with mean $2.5$ and standard deviation $1$, find the range where the middle 20% of the data lies.
