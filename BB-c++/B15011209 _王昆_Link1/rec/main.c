#include<stdio.h>
#include<malloc.h>
#include "head.h"
void main()
{
	
	struct Student *head, *letter, *digit, *other;
	
	printf("please input your character,end with #\n");
	head=creat();

	print(head);
	letter=(struct Student*)malloc(LEN);
	letter->next = letter;
	digit=(struct Student*)malloc(LEN);
	digit->next = digit;
	other=(struct Student*)malloc(LEN);
	other->next = other;

	resolve(head,letter,digit,other);
	
	printf(" �������ĸ:\n");
	print(letter);
	printf(" ���������:\n");
	print(digit);
	printf(" ����������ַ�:\n");
	print(other);

	link(letter,digit,other);
	printf("link end");
	print1(letter);
}

