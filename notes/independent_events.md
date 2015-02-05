# Independent Events

## Reading

Section 3.2

## Practice Problems

3.2 (Page 202)
  ~ 40, 41, 42, 43

## Notes

> Two events $A$ and $B$ are said to be **independent** (of each other), if knowledge that one occurred does not affect the chances of the other occuring.
>
> In equation terms, the following three conditions must hold (they are all equivalent, if one holds then they all hold):
>
> $$P(A|B) = P(A)$$
> $$P(B|A) = P(B)$$
> $$P(A\textrm{ and }B) = P(A)P(B)$$

A typical example of this is rolling a die twice: We do not expect the outcome of the second roll to rely in any way on the outcome of the first roll.

Independence of events appears in a number of different ways:

1. You may be told that two events are independent. Then you can use any of the three formulas in your work.
2. You may be asked to assume that two events are independent based on some physical characteristics of the problem or something of the kind. Again, you can then use the three formulas in your work. But you also have to remember that you made an assumption and you maybe want to reevaluate that assumption in the future.
3. You may be asked to test if two events are independent. Then you have to compute both sides of one of these equations in some other means, and determine if the equality holds or not.

From the following events, which pairs are independent? All of them involve rolling a 5-sided die.

1. A = "Getting at least a 1"
2. B = "Getting at least a 3"
3. C = "Getting at least a 3"
4. D = "Getting an odd number"
5. E = "Getting an even number"

Think back on the smoking and gender example. We had 4 main events: "Smoking", "Not Smoking", "Male", "Female". Are any of those independent?

It is important not to confuse the notion of independence with that of mutually exclusive events:

> Two events are called **mutually exclusive** if they cannot occur at tha same time, namely if:
>
> $$P(A\textrm{ and }B) = 0$$
>
> Mutually exclusive events cannot be independent.

### Application: Series of independent events

A common case where the idea and formulas for independent events come up is in the case of repeated experiments. If we can assume that each repetition is independent of the previous ones, we can use our formulas for independent events. Here is one example:

We have a coin that has a $15\%$ chance of landing heads. We flip the coin twice. What are the chances of getting heads both times?

So to do this, consider the events A="first roll is heads" and B="second roll is heads". Then because of the nature of our experiment those two events are independent of each other. They also both have probability $15\%$. So we could say:

$$P(\textrm{both rolls heads}) = P(A\textrm{ and }B) = P(A)P(B) = 0.15\times 0.15 = 0.0225 = 2.25\%$$

This would extend to more rolls. For instance the chance of all of 5 rolls being tails would be:

$$P(T)^5 = 0.85^5 = 0.4437 = 44.37\%$$

This often appears as the converse question:

> If we have $n$ independent events, each with a probability $p$ of occuring, then the probability that at least one of those events will occur is:
>
> $$1-(1-p)^n$$

So in our example, if we roll the coin 5 times, then the chances that at least one on of those times will be heads is:

$$1 - (1-0.15)^5 = 1-0.4437 = 0.5563 = 55.63\%$$

This has an important consequence: Even if an event is very likely to occur, if we require a large number of those events to occur the chances of all of them happening are decreasing rapidly.

#### Example: Transatlantic Communications

In the early days of transatlantic communication, long cables were layed out at the bottom of the Atlantic in order to transfer signals across. The first one of those was put in place in 1858 with limited success.

The central section of the cables needs to be one long section, 2800 kilometers long. It requires 51 repeaters along the way to boost the signal. The problem is that these repeaters lie at the bottom of the Atlantic, and we can't just go down and fix them. So once a repeated breaks down, that's the end of the whole cable.

Let us suppose that each repeater has a 99% chance of not breaking down (so only a $1\%$ chance of breaking down). What are the chances that the system will survive?

The chances would be:

$$1-0.99^{51} = 0.401 = 40\%$$


