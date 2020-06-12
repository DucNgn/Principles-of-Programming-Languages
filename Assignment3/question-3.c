#include <stdio.h>
#include <stdlib.h>

typedef struct {
    char *title[50];
    float price;
} Book;

void Display(Book* lib, int n);
float AverageBookPrice(Book* lib, int n);
Book* add(Book* lib, Book newBook, int size);

int main() {
    int n;
    printf("Enter the number of books:\n" );
    scanf("%d", &n);
    if(n <= 0) {
        printf("Invalid number of book.");
        return 1;
    }

    Book *lib = (Book *) malloc(n * sizeof(Book));
    if(lib == NULL) {
        printf("The memory is full");
        return 1;
    }

    for(int i = 0; i < n; ++i) {
        char title[50];
        float price;
        printf("Book no.%d\n", i);
        printf("Book Title: ");
        scanf("%s", title);
        printf("Book Price: ");
        scanf("%f", &price);
        printf("\n");
        *(lib+i)->title = title;
        (lib+i)->price = price;
    }

    Display(lib, n);
    printf("Average Price = $%f", AverageBookPrice(lib, n));

    Book test;
    char testT[50]= "test";
    *(test.title) = testT;
    (test.price) = 999.9;

    return 0;
}

void Display(Book* lib, int n) {
    printf("----Displaying----\n");
    for(int i = 0; i < n; i++) {
        printf("Book no.%d\n", i);
        printf("Book Title: %s\n", (*(lib + i)->title));
        printf("Book Price: $%f\n", ((lib + i)->price));
        printf("\n");
    }
}

float AverageBookPrice(Book* lib, int n){
    float sum = 0;
    for(int i = 0; i < n; ++i) {
        sum += (lib+i)->price;
    }
    return (sum / n);
}

Book* add(Book* lib, Book newBook, int size) {
    int n = size + 1;
    Book* newLib = (Book *) malloc(n * sizeof(Book));
    if(newLib == NULL) {
        printf("The memory is full");
        return NULL;
    }

    for(int i = 0; i < size; i++) {
        *(newLib + i)->title = *(lib + i)->title;
        (newLib + i)->price = (lib + i)->price;
    }

    *(newLib + n)->title = *(newBook.title);
    (newLib+n)->price = newBook.price;

    free(lib);
    return newLib;
}
