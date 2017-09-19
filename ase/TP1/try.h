#define MAGIC 0xdeadbeef

struct ctx_s{
	void *esp;
	void *ebp;
	int magic;
};

typedef int (func_t)(int);
int throw(struct ctx_s *pctx, int r);
int try(struct ctx_s *pctx, func_t *f, int arg);
