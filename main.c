#include <stdio.h>

// WRONG: declaring array as pointer
// extern char *message;

// CORRECT:
extern char message[];

int main(void) {
    // This will likely cause segmentation fault
    printf("In main.c: %s\n", message);
    return 0;
}