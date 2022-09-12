\newcommand{\Var}{\operatorname{Var}}

## Due 2pm on 9/8/2022

__Exercise 1__. If $X$ is a random variable with mean $m$ and variance $s^2$
show $(X - m)/s$ has mean 0 and variance 1.

<details><summary>Solution</summary>
$E[(X - m)/s] = (E[X] - m)/s = 0$ since $E[X] = m$.

$\Var((X-m)/s) = \Var((X - m))/s^2 = \Var(X)/s^2 = 1$.
</details>

Recall the _cumulant_ of a random variable $X$ is $\kappa^X(s) = \log E[e^{sX}]$.

__Exercise 2__. _Let $F$ be any positive random variable where $\log F$
has finite mean and variance. Show $F = fe^{-\kappa^X(s) + sX}$ where
$f = E[F]$, $s^2 = \Var(\log F)$, and $X$ has mean 0 and variance 1_.

_Hint_: $\log F = m + s X$ where $X$ has mean 0 and variance 1.

<details><summary>Solution</summary>
$\Var(\log F) = s^2 \Var(X) = s^2$. 

$f = E[F] = E[e^{m + s X}] = e^m e^{\kappa(s)}$ so $e^m = fe^{-\kappa(s)}$.
</details>

__Exercise 3__. _If $F = fe^{-\kappa(s) + sX}$ show $F\le k$
if and only if $X \le (\log k/f + \kappa(s))/s$_.

_Hint_: Assume $s > 0$.

<details><summary>Solution</summary>
$$
\begin{aligned}
	F &\le k \\
	fe^{-\kappa(s) + sX} &\le k \\
	-\kappa(s) + sX &\le \log k/f \\
	sX &\le \log (k/f) + \kappa(s) \\
	X &\le (\log (k/f) + \kappa(s))/s \\
\end{aligned}
$$

</details>

We call the functions $x(k; f, s) = (\log k/f + \kappa(s))/s$ the _moneyness_ at $k$.

The Fischer Black model assumes $X$ is normal and $s = \sigma\sqrt{t}$.

__Exercise 4__. _Find the formula for moneyness in the Black model_.

Recall if $N$ is a normally distributed random variable then $E[e^N] = e^{E[N] + \Var(N)/2}$.

<details><summary>Solution</summary>
$\kappa(s) = \log E[e^{sX}] = \log e^{s^2/2} = s^2/2$.

$(\log k/f + \kappa(s))/s = (\log(k/f) + \sigma^2t/2)/\sigma\sqrt{t}
(\log(k/f)/\sigma\sqrt{t} + \sigma^2\sqrt{t}/2)$.
</details>
