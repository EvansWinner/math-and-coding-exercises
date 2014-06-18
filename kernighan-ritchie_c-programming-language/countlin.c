#include <stdio.h>

main() {
  double nl = 0;
  double c;
  while ((c =getchar()) != EOF)
    if (c == '\n' || c == '\t' || c == ' ')
      ++nl;
  printf("%.0f\n", nl);
}
