#include <stdio.h>

void CallFun(int *a){
    *a = 17;
}

int main(){
    int a = 3;
    printf("Value of 'a' before invoking 'CallFun': ");
    printf("%d \n", a);
    CallFun(&a);
    printf("Value of 'a' after invoking 'CallFun': ");
    printf("%d \n", a);
}