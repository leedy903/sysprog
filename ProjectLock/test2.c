#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>
#include"hybrid_lock.h"
long g_count=0;
hybrid_lock_t *hybridlock;

void *thread_func(void *arg)
{
	long i, j, k, count=(long) arg;
	long long l;

	for(i=0;i<count;i++){
		hybrid_lock_lock(&hybridlock);
		for(j=0;j<100000;j++)
			for(k=0;k<3000;k++)
				l+=j*k;
		g_count++;
		hybrid_lock_unlock(&hybridlock);
	}
}

int main(int argc, char *argv[]){
	pthread_t *tid;
	long i, thread_count, value;
	int rc;
	hybrid_lock_init(&hybridlock);
	if(3!=argc){
		fprintf(stderr,"usage:%s <thread count> <value> \n", argv[0]);
		exit(0);
	}
	thread_count=atol(argv[1]);
	value=atol(argv[2]);

	tid=(pthread_t*)malloc(sizeof(pthread_t)*thread_count);
	if(!tid){
		fprintf(stderr,"malloc() error\n");
		exit(0);
	}
	for(i=0;i<thread_count;i++){
		rc=pthread_create(&tid[i],NULL, thread_func, (void*)value);
		if(rc){
			fprintf(stderr,"pthread_create() error\n");
			free(tid);
			hybrid_lock_destroy(&hybridlock);
			exit(0);
		}
	}
	for(i=0;i<thread_count;i++){
		rc=pthread_join(tid[i],NULL);
		if(rc){
			fprintf(stderr,"pthread_join() error\n");
			free(tid);
			hybrid_lock_destroy(&hybridlock);
			exit(0);
		}
	}
	printf("value:%ld\n", g_count);
	free(tid);
}
