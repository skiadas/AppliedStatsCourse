# Conditional Probability

## Reading

Section

## Practice Problems

2.6 (Page 116)
  ~ 2.6.2

## Notes

### Marginal and Joint Probabilities

TODO Work in progress


Health    poor  fair  good  very good  excellent  Total
-------  ----- ----- ----- ---------- ---------- ------
Female     394  1135  2953       3590       2359  10431
Male       283   884  2722       3382       2298   9569
Total      677  2019  5675       6972       4657  20000
-------  ----- ----- ----- ---------- ---------- ------


Health       poor     fair     good  very good  excellent    Total
-------  -------- -------- -------- ---------- ---------- --------
Female    0.01970  0.05675  0.14765    0.17950   0.11795   0.52155
Male      0.01415  0.04420  0.13610    0.16910   0.11490   0.47845
Total     0.03385  0.10095  0.28375    0.34860   0.23285   1.00000
-------  -------- -------- -------- ---------- ---------- --------

### Conditional Probability

> The probability of an event *given another event* is called **conditional probability**. It is one of the hardest concepts to master.
>
> $P(A|B)$ is the probability of A occuring, given that B does occur.
>
> Think of it as "restricting the sample space": Only outcomes in $B$ matter; how many of those are also in $A$?
>
> $$P(A|B) = \frac{P(A\textrm{ and }B)}{P(B)}$$

Example: In the case of the 5-sided die, let us compute $P(A|B)$.

In words this says: Given the number is at least 4, what are the chances the number is even?

It will be: $\frac{P(4)}{P(4\textrm{ or }5)} = \frac{1/5}{2/5} = 1/2$.

Notice the difference between $P(A)$ and $P(A|B)$!!!
