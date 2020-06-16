#include <stdio.h>

void DisplayArray (int arr[], int length)
{
  for (int i = 0; i < length; i++)
    {
      if (i < (length - 1))
	{
	  printf ("%d, ", *(arr + i));
	}
      else
	{
	  printf ("%d \n", *(arr + i));
	}
    }
}

void SelectionSort (int arr[], int length)
{

  int index_min = 0;
  int temp;
  for (int i = 0; i < length; i++)
    {
      index_min = i;
      for (int j = i; j < length; j++)
	{

	  if (*(arr + index_min) > *(arr + j))
	    {
	      index_min = j;
	    }

	}
      temp = *(arr + i);
      *(arr + i) = *(arr + index_min);
      *(arr + index_min) = temp;

    }
}


int main ()
{
  int arr[5] = { 1, 13, 5, 17, 11 };
  DisplayArray (arr, 5);
  SelectionSort (arr, 5);
  DisplayArray (arr, 5);
}
