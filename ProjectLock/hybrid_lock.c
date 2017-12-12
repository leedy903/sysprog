#include "hybrid_lock.h"

long timedifference(struct timeval *start, struct timeval *current){
	return (long)(&start->tv_sec-&current->tv_sec);
}
int hybrid_lock_init(hybrid_lock_t * hybridlock){
	pthread_mutex_init(&hybridlock -> mutex,NULL);
	pthread_spin_init(&hybridlock -> spin,PTHREAD_PROCESS_PRIVATE);
	return 0;
}
int hybrid_lock_destroy(hybrid_lock_t *hybridlock){
	pthread_mutex_destroy(&hybridlock->mutex);
	pthread_spin_destroy(&hybridlock->spin);
	return 0;
}
int hybrid_lock_lock(hybrid_lock_t *hybridlock){
	int term = 0;
	struct timeval start, current, sub;
	gettimeofday(&start, NULL);
	while(pthread_spin_trylock(&hybridlock->spin)){
		if(++term % 10000 == 0) {
			gettimeofday(&current, NULL);
			timersub(&current, &start, &sub);
			fprintf(stderr,"%d %ld:%ld\n",term, sub.tv_sec, sub.tv_usec);

			if(sub.tv_sec>=(double)1){
				fprintf(stderr,"mutex lock!!\n");
				return pthread_mutex_lock(&hybridlock->mutex);
			}
		}
	}
	return pthread_mutex_lock(&hybridlock->mutex);

	pthread_mutex_lock(&hybridlock->mutex);
}
int hybrid_lock_unlock(hybrid_lock_t * hybridlock){
	pthread_mutex_unlock(&hybridlock->mutex);
	pthread_spin_unlock(&hybridlock->spin);
	return 0;
}
