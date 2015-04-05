#include<stdio.h>
#include<errno.h>
#include<stdlib.h>

int main()
{
	FILE *fp;
	fp = fopen("anjali.txt","r");
	if(fp  != NULL)
	{
		printf("\nfile opened");
		fclose(fp);
	}
	else
	{
		perror("\nError");
		//printf("Error No :%d ",errno);
		exit(1);
	}
	return 0;
}
