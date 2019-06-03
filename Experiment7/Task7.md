# 实验七　差分方程

## 概念

&emsp;&emsp;对一数列$\{a_n\}$，把数列中的$a_n$和前面的$a_i$$(0 \leq i \lt n)$关联起来的方程叫做**差分方程**，差分方程也叫**递归关系**。数列中的一些已知数称为**初始值**。

## 解法

1. **常系数线性齐次差分方程的解法**

   &emsp;&emsp;形如
   $$
   a_n + b_1a_{n-1} + b_2a_{n-2} + \dotsb + b_ka_{n-k} = 0
   $$
   的差分方程，称为$\{a_n\}$的**k阶常系数线性齐次差分方程**，其中$b_i$为常数，$b_k \neq 0$，$n \geq k$。方程
   $$
   x^k +b_1x^{k-1} + \dotsb + b_k = 0
   $$
   称为差分方程的**特征方程**，其根称为**特征根**。

   1. 单根（所有根互异）

      &emsp;&emsp;差分方程

      $$
      a_n + b_1a_{n-1} + b_2a_{n-2} + \dotsb + b_ka_{n-k} = 0,b_k \neq 0
      $$

      的特征方程

      $$
      x^k +b_1x^{k-1} + \dotsb + b_k = 0
      $$

      有$k$个相异的特征根$x_1,x_2, \dotsb ,x_k$，则

      $$
      a_n=c_1x_1^n+c_2x_2^n+ \dotsb + c_kx_k^n
      $$

      是一个通解，其中$c_1,c_2, \dotsb ,c_k$为任意常数，且由一组初值条件

      $$
      a_0 = u_0，a_1 = u_1，\dotsb，a_{k-1} = u{k-1}
      $$

      可确定一个满足初始条件的特解。

   2. 重根（存在相同的根）

      &emsp;&emsp;差分方程

      $$
      a_n + b_1a_{n-1} + b_2a_{n-2} + \dotsb + b_ka_{n-k} = 0,b_k \neq 0
      $$

      的特征方程

      $$
      x^k +b_1x^{k-1} + \dotsb + b_k = 0
      $$

      的相异特征根$x_1,x_2, \dotsb ,x_t$，重数依次为

      $$
      m_1,m_2, \dotsb ,m_t,m_1+m_2+ \dotsb +m_t=k
      $$

      则差分方程的通解为

      $$
      a_n= \sum_{j=1}^{m_1}{c_{1j}n^{j-1}x_1^n}+ \sum_{j=1}^{m_1}{c_{2j}n^{j-1}x_2^n}+ \sum_{j=1}^{m_1}{c_{tj}n^{j-1}x_t^n}
      $$

   3. 共轭复根（根存在成对的共轭复数）
      &emsp;&emsp;差分方程

      $$
      a_n + b_1a_{n-1} + b_2a_{n-2} + \dotsb + b_ka_{n-k} = 0,b_k \neq 0
      $$

      的特征方程

      $$
      x^k +b_1x^{k-1} + \dotsb + b_k = 0
      $$

      的特征根出现一对共轭复根

      $$
      x_1= \delta+i\omega,x_2= \delta-i\omega
      $$

      和相异的$k-2$个根$x_3,x_4, \dotsb ,x_t$，则差分方程的通解为

      $$
      a_n=c_1\rho^n\cos{n\theta}+c_2 \rho^n \sin{n\theta}+c_3x_3^n+\dotsb+c_kx_k^n
      $$

      其中

      $$
      \rho=\sqrt{\delta^2+\omega^2},\theta=\arctan{\frac{\omega}{\delta}}
      $$

2. **常系数线性非齐次差分方程的解法**

    &emsp;&emsp;形如
    $$
    \begin{matrix}
        a_n + b_1a_{n-1} + b_2a_{n-2} + \dotsb + b_ka_{n-k} = f(n) \\
        (b_1,\dotsb,b_k为常数，b_k\neq0，f(n)\neq0，n\geq k)
    \end{matrix}
    $$
    的差分方程为**k阶常系数线性非齐次差分方程**。

    &emsp;&emsp;非齐次差分方程的通解等于对应齐次差分方程的通解加上非齐次方程的特解，即
    $$ a_n=a_n^*+\bar{a_n} $$
    其中$a_n^*$是对应齐次差分方程的**通解**，$\bar{a_n}$是非齐次差分方程的**特解**。
