#include <stdio.h>

#define ASCII_TABLE_SIZE 127

void make_it(int n) {
  int i;
  if (n > 50) n = 50;
  for (i = 0; i < n; ++i)
    printf("*");
  return;
}

main() {
  int c, i;
  int chars[ASCII_TABLE_SIZE];		/* array */

  for (i = 0; i <= ASCII_TABLE_SIZE; ++i) chars[i] = 0; /* init array */
  while ((c = getchar()) != EOF) chars[c] = ++chars[c]; /* just use the ascii table */
  for (i = 0; i <= ASCII_TABLE_SIZE; ++i) {
    printf("%c: ", i);
    make_it(chars[i]);
    printf("\n");
  }
  return 0;
}
