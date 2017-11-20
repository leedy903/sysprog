#include<stdio.h>
#include<fcntl.h>
#include<unistd.h>
#include<stdlib.h>
#include<pthread.h>	
#include<sys/time.h>
#define BUFFSIZE 4000


typedef struct info{
	int **arr1;
	int **arr2;
	long long int **arr3;
	int start;
	int end;
}info;

void *multi(void *arg);

int main(void){
	int i, j, score, n = 30;
	long long int result=0;
	struct timeval starttime;
	struct timeval terminaltime;
	struct timeval resulttime;
	FILE *fp1=fopen("sample1.txt","r");
	FILE *fp2=fopen("sample2.txt","r");
	info *infor = (info*)malloc(sizeof(info)*n);
	int **arr1=(int**)malloc(BUFFSIZE*sizeof(int*));
	int **arr2=(int**)malloc(BUFFSIZE*sizeof(int*));
	long long int **arr3=(long long int**)malloc(BUFFSIZE*sizeof(long long int*));
	

	for( i=0;i<BUFFSIZE;i++){
		arr1[i]=(int*)malloc(BUFFSIZE*sizeof(int));
		arr2[i]=(int*)malloc(BUFFSIZE*sizeof(int));
		arr3[i]=(long long int*)malloc(BUFFSIZE*sizeof(long long int));
	}
	while(!feof(fp1)){
		for( i=0;i<BUFFSIZE;i++)
			for( j=0;j<BUFFSIZE;j++)
				if(fscanf(fp1,"%d",&score)==1)
					arr1[i][j]=score;
	}
	while(!feof(fp2)){
		for( i=0;i<BUFFSIZE;i++)
			for( j=0;j<BUFFSIZE;j++)
				if(fscanf(fp2,"%d",&score)==1)
					arr2[i][j]=score;
	}
	int term=BUFFSIZE/n;
	int rest=BUFFSIZE%n;
	for( i = 0; i < n; i++) {
		infor[i].arr1 = arr1;
		infor[i].arr2 = arr2;
		infor[i].arr3 = arr3;
		infor[i].start = term*i;
		infor[i].end = term*(i+1);
	}
	//n=30
	if(rest!=0){
		infor[n-1].end=BUFFSIZE;
	}
	void *tret;
	int err;
	pthread_t* tid=(pthread_t*)malloc(sizeof(pthread_t) *n);
	
	infor->start=0;
	infor->end=term;	

	gettimeofday(&starttime, NULL);

	for( i=0;i<n;i++){
		if((err=pthread_create(tid+i, NULL,multi,(void*)&infor[i]))!=0)
			printf("can't create thread");
//			err_exit(err, "can't create thread %d\n",i);
		
	}
	for( i=0;i<n;i++){
		if((err=pthread_join(tid[i],&tret))!=0)
			printf("join err");
//			err_exit(err, "can't create thread %d\n",i);
		printf("thread %d exit code %ld\n",i,(long)tret);
	}

	//multi(arr1,arr2,arr3);
	for( i=0;i<BUFFSIZE;i++){
		for( j=0;j<BUFFSIZE;j++){
			result+=arr3[i][j];
			//printf("%lld\t",infor.arr3[i][j]);
		}
		//printf("\n");
	}

	gettimeofday(&terminaltime, NULL);

	timersub(&terminaltime, &starttime,&resulttime);

	printf("result: %lld\nruntime: %ld:%ld\n",result, resulttime.tv_sec, resulttime.tv_usec);

	fclose(fp1);
	fclose(fp2);
}
void *multi(void *arg){
	int i, j, k;
	info *infor= ((info*)arg);
	long long int sum=0;
	for( i=infor->start;i<infor->end;i++){
		for( j=0;j<BUFFSIZE;j++){
			sum=0;
			for( k=0;k<BUFFSIZE;k++)
				sum+=infor->arr1[i][k]*infor->arr2[k][j];
			infor->arr3[i][j]=sum;
		}
	}
}
