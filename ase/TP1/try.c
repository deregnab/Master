#include "try.h"
#include <stdlib.h>
#include <stdio.h>

typedef int (func_t) (int);


int try(struct ctx_s *ctx,func_t *f, int arg){
ctx->magic = MAGIC;
// asm("movl %%esp, %0":"=r"(ctx->esp)); fonctionne pas on est en 64 bits sur les machines
// asm("movl %%ebp, %0":"=r"(ctx->ebp));
 asm("mov %%rsp, %0":"=r"(ctx->esp));
 asm("mov %%rbp, %0":"=r"(ctx->ebp));

return f(arg);
}

int throw (struct ctx_s *ctx, int d2)
{
	static int r2;
	r2 = d2;

	if(ctx->magic != MAGIC)
    exit(EXIT_FAILURE);
    // asm("movl %%esp, %0" ::"r" (ctx->esp));
    // asm("movl %%ebp, %0" ::"r" (ctx->ebp));
	asm("mov %%rsp, %0" ::"r" (ctx->esp));
  asm("mov %%rbp, %0" ::"r" (ctx->ebp));

	return r2;
}
