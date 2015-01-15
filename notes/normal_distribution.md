# The Normal Distribution

## Reading

- Section 6.1
- Section 6.2


## Practice Problems

6.1 (Page 357)
  ~ 6, 7, 11, 12, 13, 15, 16, 18, 21, 23, 31, 32

6.2 (Page 359)
  ~ 48, 49, 51, 52, 53, 54, 55

6.1 (Page 361)
  ~ 60, 61, 63, 64, 65, 67

6.2 (Page 362)
  ~ 68, 69, 70, 71, 72

## Notes

- The **Normal Distribution** is a bell-shaped curve.
- Its equation depends on two parameters, $\mu$ (mean) and $\sigma$ (standard deviation)
    - $\mu$ controls the center
    - $\sigma$ controls the width. More specifically, it is the distance between the center and the "inflection point".
- Denoted $N(\mu, \sigma)$.
- We use Table A or calculator/computer for computing values. We will explain shortly.
- Key step: $z$-scores.

    $$z = \frac{x-\mu}{\sigma}$$

- They are a simple rescaling of the $x$ values.
- Can also write:

    $$x = \mu + \sigma \times z$$

    > $z$ scores measure "number of standard deviations away from the mean" that the corresponding $x$ value is.


- $z$-scores follow **Standard Normal Distribution**. With mean $0$ and standard deviation $1$.
- It is those $z$ values we can look up in the table.

### Working with $z$ values and Table A

- Compute $z$ from $x$ if need be.
- Look $z$ up in the table. For example say $z=2.31$:
    - Find $2.3$ on the left column.
    - Find $0.01$ at the top row.
    - Their intersection is the "p-value".
- p-value is "the percent of values below this value".
- Use that to compute the answer to the actual question.
- For values with more decimals, round to closest end, or average results in two ends.

Practice questions:

- What percent of the data is below $z=1.23$?
- What percent of the data is below $z=-1.5$?
- What percent of the data is below $z=-1.555$?
- What percent of the data is above $z=2.1$?
- What percent of the data is between $z=1.56$ and $z=2.1$?

### Inverse Lookups in Table A

- Do this if you know a $p$ and want to find a $z$:
- Make sure the $p$ represents "data below a point". If not convert it.
- Look for the $p$ INSIDE Table A. You will probably find one value bigger than it, right next to a value smaller than it.
- If your $p$ is closer to one of these values, just use the $z$ from that value.
- If it's closer to the middle between, them, use the average of the two $z$ values.

Practice questions:

- At what $z$ is the first quartile?
- At what $z$ is the third quartile?
- What is the IQR for the standard normal distribution?
- Find the $z$ range where the middle 20% of the data lies.
