#include<stdio.h>
#include<string.h>
#include<error.h>

char *strerr_or(int);

int main()
{
	unsigned int errno;
	printf("Enter error number");
	scanf("%d",&errno);
	strerr_or(errno);
}

char *strerr_or(int errno)
{
	printf("\nERROR NO :%d	sys_errlist[%d]\nERROR STRING : %s \n"errno,errno,sys_errlist[errno]);
}
