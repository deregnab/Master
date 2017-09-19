#include <stdio.h>

long int *local_stack;
/*long int i;
long int t[5];
long int *ptr;
*/
void dump_stack() {
	long int tmp = 0x89abcdef;
	long int *tmp_ptr = &tmp;


	while (tmp_ptr < local_stack) {

		printf("%p ",tmp_ptr);
		printf("= %lx\n", *tmp_ptr);
		tmp_ptr++;
	}

}

void rec(long int depth){
	long int rec_local = 0xcafebebe;
	if(depth>10){
		dump_stack();
	}else
		rec(depth+1);
}

int main(){
	long int local=0xdeadbeef;
	local_stack=&local;
	printf("%p:local_ \n",local_stack);
	printf("%p:Global_ \n",&local_stack);
	printf("%p:main \n",main);
	rec(0);
}
