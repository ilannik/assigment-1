all:main.o basicmath.o power.o mains mymaths maind


basicmath.o:basicmath.c 
	gcc -g -Wall -c basicmath.c 

power.o:power.c 
	gcc -g -Wall -c power.c 
	
main.o:main.c 
	gcc -g -Wall -c main.c 
	
libmyMath.a: myMath.h basicmath.o power.o
	ar -rcs libmyMath.a myMath.h basicmath.o power.o
	
mymaths:libmyMath.a
	
mains:main.o mymaths
	gcc -o mains main.o libmyMath.a -L.
	
libmyMath.so:basicmath.o power.o
	gcc -shared -o libmyMath.so basicmath.o power.o

mymathd:libmyMath.so

maind:mymathd main.o 
	gcc -o maind main.o ./libmyMath.so
	
clean: 
	rm *.o *.out *.so *.a mains maind
	
