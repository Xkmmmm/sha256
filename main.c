#include<stdio.h>
#include<string.h>
#include"sha256.h"

unsigned char out[256],in[256];
int b[1005];



int main(){

    scanf("%s",in);
    //输入被加密字符串
    sha256(in,strlen(in),out);
    //sha256加密
    for(int i=0;i<256;i++)if(out[i])printf("%x",(unsigned)out[i]);
    putchar('\n');
	//输出加密字符串
}