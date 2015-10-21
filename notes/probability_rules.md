# Probability Rules

## Notes

Let us summarize the key probability rules we've encountered so far:

> $$P(A') = 1 - P(A)$$
> $$P(A\textrm{ or }B) = P(A) + P(B) - P(A\textrm{ and }B)$$
> $$P(A\textrm{ or }B) = P(A) + P(B)\textrm{ if }A,B\textrm{ are disjoint}$$
> $$P(A\textrm{ and }B) = P(A)P(B|A) = P(B)P(A|B)$$
> $$P(A\textrm{ and }B) = P(A)P(B)\textrm{ if }A,B\textrm{ are independent}$$

These are called the **addition rule** and the **multiplication rule** respectively.

We will see the rules in action in the following example:

> Peter has two roads he can choose when he drives to work each day. He rolls a fair 5-sided die to decide, and if the outcome is an odd number then he takes road A, if it is even he takes road B. In road A there is a 70% chance of running into traffic, in road B there is a 40% chance.
>
> Overall what is Peter's chance of running into traffic?

Let us translate the information they have given us into events: There are effectively 4 "outcomes":

1. Peter takes road A and finds traffic
2. Peter takes road A and doesn't find traffic
3. Peter takes road B and finds traffic
4. Peter takes road B and doesn't find traffic

We are essentially interested in the event that is the combination of 1 and 3. What we are given is some partial information.

We will denote by A and B the two events for which road Peter can choose, and C the event that he runs into traffic. Then using the addition rule we can write:

$$P(C) = P(A\textrm{ and }C) + P(B\textrm{ and }C)$$

So if we can find those two probabilities, we can also find the probability of C, which is what we were after. For that, we will use the multiplication rule:

$$P(A\textrm{ and }C) = P(A)P(C|A)$$

Let us read the right-hand-side out: We multiply the probability that Peter takes road A (60%) with the probability that he runs into traffic given that he is taking road A (70%). This gives us the probability that he takes road A and runs into traffic (42%).

Similarly:

$$P(B\textrm{ and }C) = P(B)P(C|B) = 0.4\times 0.4 = 0.16 = 16\%$$

Therefore the total probability that Peter will run into traffic is $P(C) = 0.42 + 0.16 = 0.58$, or 58%.

> Continuing on the same problem, suppose Peter does run into traffic. What are the chances, that he took road A?

To answer this question, we need to compute $P(A|C)$. Let us use the formula:

$$P(A|C) = \frac{P(A\textrm{ and }C)}{P(C)} = \frac{0.42}{0.58} = 0.7241$$

So there is a $72.4$% chance that Peter took road A.

Let us think about this logically for a second: Given that we know that Peter ended up in traffic, his chance of having taken road A went up from 60% to 72%. This makes sense, because Peter would have been more likely to run into traffic via road A than via road B. So the fact that he ended up in traffic makes road A somewhat more likely.

The book has a number of other examples, study them!
