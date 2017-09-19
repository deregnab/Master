#include <stdio.h>
#include "try.h"

static struct ctx_s ctx;

int mul(int depth){
  int i;
     switch (scanf("%d", &i))
    {
        case EOF :
        return 1;
        case 0 :
            return mul(depth+1);
        case 1 :
            if (i)
                return i * mul(depth+1);
            else
                throw(&ctx, 0);
    }
}

int main(){
  int result;
  printf("Veuillez saisir une liste d'entier");
  result =try (&ctx,mul,0);
  printf ("le produit de la multiplication est %d",result);
}
