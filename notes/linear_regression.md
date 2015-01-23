# Linear Models and Regression

## Reading

Sections 12.1, 12.3, 12.5, 12.6

## Practice Problems

12.1 (Page 664)
  ~ 7, 10, 11

12.3 (Page 668)
  ~ 20-25

12.5 (Page 669)
  ~ 31, 32, 33, 34, 35

12.6 (Page 671)
  ~ 51, 53, 54

12.5 (Page 674)
  ~ 70, 72

## Notes

### Basics of Regression Lines

When the data appears to have an overall linear direction, it would be reasonable to attempt to obtain a linear model fit, so an equation of the form:

$$y \sim a + b x$$

where $a$, $b$ are the two parameters to be determined.

Notice that unlike what you may be used to, we use $b$ to denote the slope of the line, and $a$ to denote the $y$ intercept.

> The **least squares regression line** is the linear equation with the smallest sum of squared residuals (SSR).
>
> It is obtained by computing $a$, $b$ according to the formula:
>
> $$b = r\frac{s_y}{s_x}$$
>
> $$a = \bar y - b \bar x$$

Let us see this in action in the example of the city mileage and the highway mileage:

![A regression line](images/regression.png "A regression line")

There is overall a linear direction, and therefore it makes sense to look for a linear equation like that. Let's see how we would compute the equation for that line by hand. We will need to know the means and standard deviations for both CMpG (our x variable) and HMpG (our y variable):

--------- ------ --------- ------------
Variable    Mean  Std. Dev  Correlation
--------- ------ --------- ------------
CMpG       20.09     5.213         0.94
HMpG       26.90     5.967
--------- ------ --------- ------------

It is really important to not forget which variable is your $x$ and which is your $y$, or you'll get the formulas all wrong. In our case, CMpG is our $x$.

So let us compute the regression line. Slope first:

$$b = r \frac{s_y}{s_x} = 0.94\times \frac{5.967}{5.213} = 1.076$$

$$a = \bar y - b \bar x = 26.9 - 1.076\times 20.09 = 5.283$$

So our final equation for the regression line is:

> $$\hat y = 5.283 + 1.076 \times x$$

We used $\hat y$ there instead of $y$ because that equation gives us the *predicted* values, not the actual $y$ values in the data.

Let's use this line to do some prediction. For instance, suppose we have a car that has CMpG of 20. We would then predict that its HMpG would be:

$$5.283 + 1.076 \times 20 = 26.803$$

so we would predict a highway mileage of $26.8$ for such a car. Now if you look at the graph, you will see that there a number of cars with CMpG of 20, whose corresponding HMpGs range from around 24 to 30. There is no way for our model to predict all those accurately: Our model can only make one prediction from the CMpG of 20. So it's bound to make some errors. But it's doing as best as we could expect it to.

### Interpreting r-squared

There is a certain interpretation afforded to the square of the correlation, $r^2$. In order to understand it, we have to understand the main goal of modeling.

When we use a linear equation $y=a+bx$ as a model, we are in effect saying: "We know $y$ is changing, and we believe it is because $x$ is changing, and this formula tells us about this change."

We can think of that equation as "explaining part of the variance in $y$". It does it via the predicted values $\hat y$. Since $\hat y$ is exactly equal to $a+bx$, all the variation that $\hat y$ undergoes is directly caused by the corresponding variation in $x$. This is where $r^2$ comes in:

> $$r^2 = \frac{\textrm{Variance}(\hat y)}{\textrm{Variance}(y)}$$
>
> $r^2$ measures the percent of the variance of $y$ that is explained by the variance in $x$.

In our example, $r=0.94$ and so $r^2=0.8836$. So we can say that 88% of the variation we observe in HMpG can be explained by the corresponding variation in $CMpG.

### Residuals in the Graph

Recall that the residual is the difference between the $y$ value and the corresponding $\hat y$ predicted value. Geometrically we can think of the residuals as the vertical distances from each point to the regression line:

![The residuals](images/regression2.png "Residuals")

Think of the residuals as springs attached to the line. The further they are, the more stretched out the springs, and the stronger they pull the line towards them:

> The goal of the least squares regression line is to be as close as it can to its points, resulting in small residuals.
>
> The line will try to move towards points with large residuals, if it can do so without sacrificing too much on the other points.

TODO: Link applet here

TODO: Talk about outliers

TODO: Talk about residual plots
