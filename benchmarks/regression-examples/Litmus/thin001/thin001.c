/*
 * This is a C program that implements the following Litmus test
 *http://www.cprover.org/wmm/esop13/x86_litmus//thin001.litmus
 *
X86 thin001
"PodRW Rfe PodRW Rfe PodRW Rfe"
Cycle=Rfe PodRW Rfe PodRW Rfe PodRW
Relax=
Safe=Rfe PodRW
{
}
 P0          | P1          | P2          ;
 MOV EAX,[z] | MOV EAX,[x] | MOV EAX,[y] ;
 MOV [x],$1  | MOV [y],$1  | MOV [z],$1  ;
exists
(0:EAX=1 /\ 1:EAX=1 /\ 2:EAX=1)
 * TSO OK.
 *
 * PSO OK.
 */

#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

long int  x, y, z;

void *P0(void *arg)
{
  long int EAX, EBX;
  EAX = z;
  x = 1;
  printf("\n %%%% (EAX1=%d) %%%%", EAX);
  return (void*)(EAX==1);
}

void *P1(void *arg)
{
  long int EAX, EBX;
  EAX = x;
  y = 1;
  printf("\n %%%% (EAX1=%d) %%%%", EAX);
  return (void*)(EAX==1);
}
void *P2(void *arg)
{
  long int EAX;
  EAX = y;
  z = 1;
  return (void*)(EAX==1);
}



int main(void) 
{
  pthread_t t0, t1, t2, t3;
  long int cond0, cond1, cond2, cond3;

  pthread_create(&t0, 0, P0, 0);
  pthread_create(&t1, 0, P1, 0);
  pthread_create(&t2, 0, P2, 0);
 
  pthread_join(t0, (void**)&cond0);
  pthread_join(t1, (void**)&cond1);
  pthread_join(t2, (void**)&cond2);

  if ( cond0 &&  cond1 && cond2) {
    printf("\n@@@CLAP: There is a SC violation! \n");
    printf("\033[1;31m SC Violation!!! \033[0m\n");
  }

  return 0;
}
