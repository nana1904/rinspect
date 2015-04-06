/*
 * This is a C program that implements the following Litmus test
 * http://www.cprover.org/wmm/esop13/x86_litmus//safe006.litmus
 *

X86 safe006
"Rfe PodRW Rfe PodRW"
Cycle=Rfe PodRW Rfe PodRW
Relax=
Safe=Rfe PodRW
{
}
 P0          | P1          ;
 MOV EAX,[y] | MOV EAX,[x] ;
 MOV [x],$1  | MOV [y],$1  ;
exists
(0:EAX=1 /\ 1:EAX=1)

 * TSO violation not expected.
 *
 * PSO violation not expected.
 */

#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

long int x, y, z;

void MFENCE(){}

void *P0(void *arg)
{
  long int EAX, EBX;
  EAX = y;
  x = 1;
  printf("\n %%%% (EAX0=%d) %%%%\n", EAX);
  return (void*)(EAX==1);
}

void *P1(void *arg)
{
  long int EAX, EBX;
  EAX = x;
  y = 1;
  printf("\n %%%% (EAX1=%d) %%%%\n", EAX);
  return (void*)(EAX==1);
}

int main(void) 
{
  pthread_t t0, t1, t2;
  long int cond0, cond1, cond2;

  x = y = 0;

  pthread_create(&t0, 0, P0, 0);
  pthread_create(&t1, 0, P1, 0);

  pthread_join(t0, (void**)&cond0);
  pthread_join(t1, (void**)&cond1);

  //assert( ! (cond0 && cond1) );
  if ( cond0 && cond1 ) {
    printf("\n@@@CLAP: There is a SC violation! \n");
    printf("\033[1;31m SC Violation!!! \033[0m\n");
  }

  return 0;
}
