test2 : hybrid_lock.o test2.o
	gcc -o test2 hybrid_lock.o test2.o -lpthread
hybrid_lock.o : hybrid_lock.c
	gcc -c -o hybrid_lock.o hybrid_lock.c
test2.o : test2.c
	gcc -c -o test2.o test2.c
clean :
	rm *o test2
