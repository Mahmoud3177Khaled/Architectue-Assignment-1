#include<stdio.h>

int main(){
    int firstArray[10] = {10, 31, 5, 7, 11, 3, 8, 40, 12, 4};
    int arraySize = sizeof(firstArray)/sizeof(firstArray[0]);
    int min = firstArray[0];
    for(int i = 0 ; i < arraySize; i++){
        if(firstArray[i] < min){
            min = firstArray[i];
        }
    }
    printf("Min element is: %d\n",min);

    int secondArray[10] = {11, 2, 3, 7, 5, 10, 9, 22, 6, 1};
    arraySize = sizeof(secondArray)/sizeof(secondArray[0]);
    min = secondArray[0];
    for(int i = 0 ; i < arraySize; i++){
        if(secondArray[i] < min){
            min = secondArray[i];
        }
    }
    printf("Min element is: %d\n",min);

    return 0;
}