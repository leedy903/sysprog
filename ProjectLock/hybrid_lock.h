#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/time.h>
#include<pthread.h>
#include<stdbool.h>
typedef struct hybrid_lock{
	pthread_mutex_t mutex;
	pthread_spinlock_t spin;
}hybrid_lock_t;
long timedifference(struct timeval *start, struct timeval *current);
int hybrid_lock_init(hybrid_lock_t * hybridlock);
int hybrid_lock_destroy(hybrid_lock_t * hybridlock);
int hybrid_lock_lock(hybrid_lock_t * hybridlock);
int hybrid_lock_unlock(hybrid_lock_t * hybridlock);

