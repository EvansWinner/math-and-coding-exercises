#include <stdio.h>

/* Print a table of Celcius to Fahrenheit temperatures. */
main() {
  printf("  F\t  C\n------------\n");
  ftoc();
  printf("\n");
  printf("  C\t  F\n------------\n");
  ctof();
}

ftoc() {
  int fahrenheit;
  for (fahrenheit = 0; fahrenheit <= 300; fahrenheit = fahrenheit + 20)
    printf("%3d %6.1f\n", fahrenheit, (5.0/9.0) * (fahrenheit - 32.0));
}
 
ctof() {
  int celcius;
  for (celcius = 0; celcius <= 300; celcius = celcius + 20)
    printf("%3d %6.1f\n", celcius, (celcius + 160) / 5.0);
}
