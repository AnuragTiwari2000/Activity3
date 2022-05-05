#include"fun.h"
#include<string.h>
#include<stdio.h>
int name(char str[])
{
    char *p=str;
    int sum=0, i,length;
    printf("Hexadecimal values of each characters of given string: \n ");
    while(str[i])
         printf("%X\n ",str[i++]);
    length= strlen(str);
    int arr[length];
    for(int i=0; i<=length;i++)
    {
        arr[i]=(int)*(p+i);
        sum=sum+arr[i];
    }
    return sum;

}
