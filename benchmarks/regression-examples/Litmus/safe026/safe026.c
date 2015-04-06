/*
 * This is a C program that implements the following Litmus test
 * http://www.cprover.org/wmm/esop13/x86_litmus//safe026.litmus
 *

X86 safe026
"Fre PodWW Wse Rfe PodRR"
Cycle=Rfe PodRR Fre PodWW Wse
Relax=
Safe=Rfe Fre Wse PodWW PodRR
{
}
 P0         | P1         | P2          ;
 MOV [y],$1 | MOV [x],$2 | MOV EAX,[x] ;
 MOV [x],$1 |            | MOV EBX,[y] ;
exists
(x=2 /\ 2:EAX=2 /\ 2:EBX=0)

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
  y = 1;
  x = 1;
  return (void*)1;
}

void *P1(void *arg)
{
  long int EAX, EBX;
  x = 2;
  return (void*)1;
}

void *P2(void *arg)
{
  long int EAX, EBX;
  EAX = x;
  EBX = y;
  printf("\n (EAX2=%d, EBX2=%d) \n", EAX, EBX); 
  return (void*)(EAX==2 && EBX==0);
}

int main(void) 
{
  pthread_t t0, t1, t2, t3;
  long int cond0, cond1, cond2, cond3;

  x = y = 0;

  pthread_create(&t0, 0, P0, 0);
  pthread_create(&t1, 0, P1, 0);
  pthread_create(&t2, 0, P2, 0);

  pthread_join(t0, (void**)&cond0);
  pthread_join(t1, (void**)&cond1);
  pthread_join(t2, (void**)&cond2);

  //assert( ! (x==2 && cond2) );
  if ( x==2 && cond2 ) {
    printf("\n@@@CLAP: There is a SC violation! \n");
    printf("\033[1;31m SC Violation!!! \033[0m\n");
  }

  return 0;
}
