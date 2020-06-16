#include <stdio.h>
#include <stdlib.h>

typedef struct {
    char *title;
    float price;
} Book;

void Display(Book* lib, int n);
float AverageBookPrice(Book* lib, int n);
void add(Book **lib, Book newBook, int * size);

int main() {
    int size;
    printf("Enter the number of books:\n" );
    scanf("%d", &size);
    if(size <= 0) {
        printf("Invalid number of book.");
        return 1;
    }

    Book *lib = (Book *) malloc(size * sizeof(Book));
    if(lib == NULL) {
        printf("The memory is full");
        exit(0);
    }

    for(int i = 0; i < size; ++i) {
        lib[i].title = (char*) malloc(50);
        if(lib[i].title == NULL) {
            printf("The memory for title is full");
            exit(0);
        } 

        printf("Book no.%d\n", i);
        printf("Book Title: ");
        scanf("%s", lib[i].title);
        printf("Book Price: ");
        scanf("%f", &lib[i].price);
        printf("\n");
    }

    Display(lib, size);
    printf("Average Price = $%f", AverageBookPrice(lib, size));
    
    Book test;
    test.title = (char*) malloc(50);
    test.title = "Sample Book";
    test.price = 1.0;

    add2(&lib, test, &size);
    Display(lib, size);

    for(int i = 0; i < size; i++) {
        free((lib + i)->title);
    }

    free(lib);
    return 0;
}

void Display(Book* lib, int n) {
    printf("\n----Displaying----\n");
    for(int i = 0; i < n; i++) {
        printf("Book no.%d\n", i);
        printf("Book Title: %s\n", (lib + i)->title);
        printf("Book Price: $%f\n", (lib + i)->price);
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

void add(Book **lib, Book newBook, int * size) {
    *size = *size + 1;
    *lib = (Book*)realloc(*lib, *size * sizeof(Book));
    if(*lib == NULL) {
        printf("The memory is full");
        *size = *size - 1;
        return;
    }

    (*lib + *size - 1)->title = (char *) malloc(50);
    (*lib + *size - 1)->title = newBook.title;
    (*lib + *size - 1)->price = newBook.price;
}
