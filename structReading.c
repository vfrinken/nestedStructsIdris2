#include<stdio.h>
#include<stdlib.h>
#include <unistd.h>


typedef struct{
    int a;
    int b;
    int c;
}ExtraStruct;

typedef struct{
    ExtraStruct extra;
    int x;
    int y;
} TestStruct;


TestStruct * getTestStruct(){
    TestStruct * ts = (TestStruct*)malloc(sizeof(TestStruct));
    ts -> x = 1234567890;
    ts -> y = -1;
    return ts;
}
