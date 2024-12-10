#include <stdio.h>

int main() {
    // printf("hello world");

    int arr[10] = {10, 31, 5, 7, 11, 3, 8, 40, 12, 4};
    int arr2[10] = {19, 2, 3, 7, 5, 10, 9, 0, 6, 1};
    int c = 0;

    for (int i = 0; i < 10; i = i+1)
    {
        if(arr[i] % 2 == 0) {
            c = c + 1;
        }
    }

    printf("\nCount of even numbers is: ");
    printf("%d", c);

    c = 0;

    for (int i = 0; i < 10; i = i+1)
    {
        if(arr2[i] % 2 == 0) {
            c = c + 1;
        }
    }

    printf("\nCount of even numbers is: ");
    printf("%d", c);
    
}
