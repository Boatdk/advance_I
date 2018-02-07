#include <stdio.h>
int main(int argc, char *argv[])
{
 int t_id=1;
 double start,stop;
 start = omp_get_wtime();
 printf("Hello world from thread ID %d\n",t_id);
 stop = omp_get_wtime();
 printf("Time to compile this = %f",stop-start);
} 

