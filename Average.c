#include<stdio.h>
int main(){
    int firstArray[10] = {10, 31, 5, 7, 11, 3, 8, 40, 12, 4};
    int arraySize = sizeof(firstArray)/sizeof(firstArray[0]);
    int sum = 0;
    for(int i = 0 ; i < arraySize; i++){
        sum += firstArray[i];
    }
    printf("Average is: %f\n",(float)sum/arraySize);

    return 0;
}