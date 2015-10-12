# Introduction to Probability

## Reading

Section 2.1.1-2.1.5

## Practice Problems

2.6 (Page 116)
  ~ 2.6.1 2.2, 2.5, 2.6, 2.7, 2.8, 2.11, 2.12, 2.13, 2.14

## Notes

Probability is the mathematical study of "random phenomena". In such a "random phenomenon" we make some key assumptions:

- While we may not know what outcome will occur each time, we do know what the possible outcomes are.
- We also have a notion/assumption about the long-term relative frequency of outcomes over a long series of repetitions of the phenomenon.

As a simple example, consider rolling a 6-sided die:

- We know that only the outcomes 1 through 6 are possible.
- If the die is "fair", then if we roll the die many many times we expect about 1/6th of them to come up 1, 1/6th to come up 2 and so on.

> The **sample space** for a random phenomenon, denoted by S, is the set of possible outcomes.
>
> The **probability of an outcome** is the long-term relative frequency of that outcome.
>
> The sum of all the probabilities for all outcomes must equal 1.

Let us look at some standard "random phenomena/experiments". We will typically refer to them as "probability models", they are idealized theoretical representations of an experiment (i.e. thinking of flipping a coin and what would happen, rather than actually flipping a physical coin and recording the results).

Coin Flip
  ~ Flipping a fair coin. Sample space: $\{H, T\}$. Probability of $1/2$ for each.

Unfair Coin Flip
  ~ Flipping an unfair coin. $P(H) = p$, $P(T) = 1-p$.

Five-sided die
  ~ Rolling a "five-sided" die. From a mathematical point of view there is no problem with that. Sample space: $\{1, 2, 3, 4, 5\}$. Probability of $1/5$th for each.

Unfair die
  ~ Imagine a five-sided die where "1" is 3 times as likely as any of the others. Find their probabilities.

Smoking and Gender
  ~ Suppose we have 100 students. 25 of them smoke, and of those 12 are women. The remaining 75 students do not smoke, and of those 60 are women. Write down the possible outcomes with their probabilities.

A key concept in probability theory is that of an event:

> An **event** is a collection of zero or more outcomes.
>
> The probability of an event, $P(E)$, is the sum of the probabilities of its outcomes.

For example, here are some events for the 5-sided die model:

- A = "all even outcomes". So $A = \{2, 4\}$. $P(A) = 2/5$.
- B = "At least a 4". So $B = \{4, 5\}$. $P(B) = 2/5$.

What events can you think of in the example model with smoking and gender? What are their probabilities?

### Event Operations

There are some standard ways to combine events:

Complement
  ~ The complement of an event $A$, denoted $A'$, is the event consisting of all outcomes that are not in $A$.

Union
  ~ The union of two events $A$ and $B$, denoted $A\cup B$ or "$A\textrm{ or }B$", is all outcomes that are in at least one of the two sets. It informally says: "I want at least one of these two events to occur."

Intersection
  ~ The intersection of two events $A$ and $B$, denoted by $A\cap B$ or "$A\textrm{ and }B$", is all outcomes that belong to both sets. It informally says: "I want both events to occur *at the same time*."

For instance in the 5-side die example:

$$A\textrm{ or }B = \{2, 4, 5\}$$

$$A\textrm{ and }B = \{4\}$$

Key formula that relates the various probabilities:

> $$P(A\textrm{ or }B) = P(A) + P(B) - P(A\textrm{ and }B)$$

