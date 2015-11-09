# Mean and Standard Deviation for Random Variables

## Reading

- Section 2.4.1, 2.4.2

## Practice Problems

2.6.4 (Page 123)
  ~ 2.34, 2.36, 2.38, 2.39

## Notes

### Mean of a Random Variable

> The **mean** or **expected value** of a random variable can be thought of as the "long-term average", meaning the average of the outcomes of an ever increasing number of trials of the experiment.
>
> Denoted $E(X)$ or $\mu_X$.
>
> If the variable $X$ takes the values $x_1, x_2, \ldots x_n$ with probabilities $p_1, p_2, \ldots, p_n$ respectively, then the mean is defined as:
> $$E(X) = \mu_X = p_1x_1 + p_2x_2 + \cdots + p_nx_n$$

You can think of this as a *weighted average* of the values, with their probabilities as weights. This makes sense: We want to take all values into account, but those values that have a higher probability are meant to appear more often, and so should contribute more. *Each value contributes an amount proportionate to its relative frequency*.

As a simple example, consider the example from the last section, with probability table:

----- ------ ------ ------
    X      0      1      2
 P(X)  $1/2$  $1/4$  $1/4$
----- ------ ------ ------

Then for the mean we would have:

$$E(X) = \frac{1}{2}\cdot 0 + \frac{1}{4} \cdot 1 + \frac{1}{4} \cdot 2 = \frac{3}{4} = 0.75$$

We can think of this as saying that if you were to play that game repeatedly, you would be gaining on average $\$0.75$ per game. You can also think of it as the "fair price to pay to play the game".

We examined a number of games in the previous section. Compute the mean of the random variables in each of those games.

### Standard Deviation of a Random Variable

The standard deviation follows a similar formula:

> $$\sigma_X^2 = p_1 (x_1 - \mu_X)^2 + p_2 (x_2 - \mu_X)^2 + \cdots p_n (x_n - \mu_X)^2$$

So we look at how far each value is from the mean, square to remove the signs, average while accounting for the different probabilities, and finally take a square root.

This square of the standard deviation, typically called the *Variance* $\textrm{Var}(X)$, you will often see written as $E\left((X-\mu_X)^2\right)$.

Compute the standard deviation for each of the examples discussed so far.
