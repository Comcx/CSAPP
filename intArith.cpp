#include "intArith.h"
#include <limits.h>

int power(int x , int t)
{
	int res = 1;
	for(int i=0 ; i<t ; i++)
	{
		res *= x;
	}
	return res;
}


int t_add_ok(int a , int b)
{
	int sum = a + b;
	int pos_over = a>=0 && b>=0 && sum<0;
	int neg_over = a<0 && b<0 && sum>=0;

	return !pos_over && !neg_over;
}

int u_add_ok(unsigned a , unsigned b)
{
	unsigned sum = a + b;
	return sum >= a;
}


int t_sub_ok(int a , int b)
{
	if(b == INT_MIN)
		return b==0?0:1;
	else
		return t_add_ok(a,-b);
}


int u_mult_ok(unsigned a , unsigned b)
{
	
	return 0;
}






