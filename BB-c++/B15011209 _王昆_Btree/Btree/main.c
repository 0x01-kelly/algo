#include "stdio.h" 
#include "stdlib.h" 
#include "Btree.h"

int main()
{
	BT *T;
	printf("������������ĸ��ڵ�,����0��ʾ�ýڵ�Ϊ��\n");
	T=CreatBT();
	show(T);
	printf("\n\nThis tree's high is: %d\n\n",height(T));
	printf("\n\nThis tree's leaf is: %d\n\n",leaf(T));
	CopyTree(T);
	exchange(T);
	show(T);
	printf("\n");
	DeleteBiTree(T);
	printf("\n");
	return 0;
}