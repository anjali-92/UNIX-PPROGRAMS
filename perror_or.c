#include<stdio.h>
#include<error.h>
#include<string.h>
void perror_or(char *);
int errno;

int main()
{
printf("\nEnter Error Number");
scanf("%d",&errno);
perror_or(NULL);
}

void perror_or( char *error)
{
	//append error string with colon ,space ,and error and print 
	//error.append(sys_errlist[errno]);
	strcat("anjali",sys_errlist[errno]);
	printf("\n%s",error);
}
