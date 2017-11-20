#include <string.h>
#include <memory.h>
#include <fcntl.h>
#include <signal.h>
#include <unistd.h>
#include <stdio.h>

struct sigaction act_new;
struct sigaction act_old;
void sig_fn() {
	printf("Crtl-c is pressed. Try Again\n");
}

int main ( int argc, char **argv) {
	
	printf("SIGINT : %d\n", SIGINT);
	act_new.sa_handler = sig_fn;

	sigemptyset(&act_new.sa_mask);
	
	sigaction(SIGINT, &act_new, &act_old);

	while (1) {
		pause();
		}
	reutn 0;
}
