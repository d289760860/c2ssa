#include <stdnoreturn.h>

void pointer()
{
    int a = 10;
    int b = 12;
    int c = 15;
    int d = 16;
    int* pa = &a;
    int* pb = &b;
    *pa = b;
    b = 13;
    *pb = 14;
    c = 20;
    d = 21;
}

int main()
{
    pointer();
}