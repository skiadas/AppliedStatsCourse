# Tree Diagrams

## Reading

Section 3.4

## Practice Problems

3.4 (Page )
  ~

3.4 (Page )
  ~

## Notes

**Tree Diagrams** are a way to visualize random processes with multiple steps. They help us keep track of what is what along the way. Here are the main components:

Root
  ~ There is a root of the tree, which is considered our starting point.

Branch Levels
  ~ Each branching level from that point on corresponds to one step in the process. For instance when rolling a die 3 times, there will be three steps corresponding to each of the 3 rolls.

    At each branching level there is a number of different paths to follow, corresponding to mutually exclusive events that exhaust all possibilities. Each path taken amounts to selecting a particular event to occur.

    For example in the event of rolling a die three times, and if we only cared about whether each outcome is even or odd, we would have two paths at each branching point, corresponding to those two possibilities.

Leaves
  ~ Each "full path" through the tree, ending in a leaf, corresponds to one outcome of the whole process, that outcome being the intersection of all the events along the path.

Branch probabilities
  ~ At each branch point, each branch from that point has a corresponding *conditional probability* of taking that branch, *given* that we are already at that point.

    The probabilities for all branches from a given branch point must add up to 100%.

Leaf probabilities
  ~ At each leaf, as well as each branch point in the tree, there is a corresponding *probability* of making it to that point starting from the root.

    To find this probability, multiply the probabilities of all the branches taken to get there.

### An example

An illustration will help. Consider the following problem:

> Two teams A and B will play in a "best out of 3" series of games. On any particular game, team A has a 60% chance to win, while B has only a 40% chance.
>
> What are the overall chances that team A will win?

Here is how a diagram for this problem might look like.

![Tree Diagram, "Best out of 3"](images/tree1.png "A tree diagram")

You can see that we have one branching point for each game, with two options each time depending on which game wins. The conditional probabilities along the branches are always $0.6$ and $0.4$.

Notice that some paths only need to go 2 levels deep, as a third game is not always necessary.

So now to find the overall chances of team A winning, we have to follow all the paths that end up with a win for A. These are the paths AA, ABA and BAA. They are disjoint, so we add their probabilities:

$$P(AA) + P(ABA) + P(BAA) = 0.36 + 0.144 + 0.144 = 0.648$$

So team A has a $64.8$% chance of winning a "best out of 3" against team B. Their chances went up vs a single game: This is because the more games they have to play, the more opportunities they have to assert their 60% superiority.

As a better illustration of that, imagine they played 500 games. How likely are they to win over half of those games? The more they play, the more pronounced the difference between 40% and 60% becomes.

We will now consider a number of related questions:

> 1. If team A does end up winning, what are the chances that a third game was necessary?
> 2. Overall, what are the chances that a third game is necessary?
> 3. If a third game was necessary, what are the chances that team A won?
> 4. If only two games were needed, what are the chances that team A won?

Let us try to answer those questions.

1. The first is simple. It is a conditional probability, given that team A ended up winning. So it will be a quotient, where the denominator is all the ways team A wins an the numerator are those ways in which team A wins and 3 games are played. So we would have:

    $$\frac{P(ABA) + P(BAA)}{P(AA) + P(ABA) + P(BAA)} = \frac{0.288}{0.648} = 0.4444$$

    So the chances that a third game was necessary given that A won are $44.44$%
2. Now we proceed to the second question, the chances that a third game was necessary. To do that, we actually want to stop earlier in the paths. So we want to follow the two middle paths, AB and BA, but only up to that point, as those are the two locations that would necessitate a third game. The chances would therefore be:

    $$P(AB) + P(BA) = 0.24 + 0.24 = 0.48$$

    or 48%. Another way to do the same problem would have been to look at the complement, which would have been that the series ended in 2 games, then subtract that probability from 1. This would be:

    $$1 - P(AA) - P(BB) = 1-0.36-0.16 = 1-0.52=0.48$$
3. For the third question, it is again a conditional. We need to compute a quotient where the denominator is what we just computed, and the numerator is those paths with 3 games that ended up in a team A win. So we would have:

    $$\frac{P(ABA) + P(BAA)}{0.48} = \frac{0.288}{0.48} = 0.6$$

    So the chances are 60%.

    Take a moment to ponder this: The chances of A winning, given that we know a third game was necessary, are the same as the chances of A winning a single game. There is a very simple explanation for that, make sure you figure it out.
4. This is similar to previous problems. The computation would be:

    $$\frac{P(AA)}{P(AA) + P(BB)} = \frac{0.36}{0.52} = 0.6923$$

    So there is a $69.23$% probability.
