#include <stdio.h>
#include "myMath.h"

int main()
{
double usernum;
printf("please enter a real number\n");
scanf("%lf",&usernum);

double ans1,ans2,ans3;
ans1=sub(add(Exponent((int)usernum),power(usernum,3)),2);
ans2=add(mul(usernum,3),mul(power(usernum,2),2));
ans3=sub(div(mul(power(usernum,3),4),5),mul(usernum,2));

printf("the value of f(x)=e^x+x^3-2 at %.4lf is %.4f \n",usernum,ans1);
printf("the value of f(x)=3x+2x^2 is at %.4lf is %.4lf \n",usernum,ans2);
printf("the value of f(x)=(4x^3)/5-2x at %.4lf is %.4lf \n",usernum,ans3);
return 0;
}

