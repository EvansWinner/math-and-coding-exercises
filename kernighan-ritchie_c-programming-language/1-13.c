#include <stdio.h>

#define IN 1
#define OUT 0
#define MAX_WORD_LENGTH 20

void make_it(int n) {
  int i;
  if (n > 50) n = 50;
  for (i = 0; i < n; ++i)
    printf("*");
  return;
}

main() {
  int c, i, last = OUT, count = 0;
  int words[MAX_WORD_LENGTH];		/* histogram array */
  for (i = 0; i < MAX_WORD_LENGTH; ++i)	/* initialize it */
    words[i] = 0;
  /* Populate the array */
  while ((c = getchar()) != EOF) {
    if ((c == ' ') || (c == '\t') || (c == '\n')) {
      if (last == IN)
	if (count <= MAX_WORD_LENGTH) words[count] = ++words[count];
        else words[MAX_WORD_LENGTH - 1] = ++words[MAX_WORD_LENGTH - 1];
      count = 0;
    }
    else {
      last = IN;
      count = ++count;
    }
  }

  if (last == IN)
    if (count <= MAX_WORD_LENGTH) words[count] = ++words[count];
    else words[MAX_WORD_LENGTH - 1] = ++words[MAX_WORD_LENGTH - 1];

  /* write the histogram */
  printf("\n    -- NUMBER OF WORDS OF GIVEN LENGTH IN INPUT FILE (MAX 50) --\n");
  printf("                          |10       |20       |30       |40       |>50\n");
  for (i = 0; i < MAX_WORD_LENGTH; ++i) {
    if (i == (MAX_WORD_LENGTH - 1)) printf(">=");
    else printf("  ");
    /* if (i < MAX_WORD_LENGTH) printf(" "); */
    if (i < 9) printf(" ");
    printf("%d ", i + 1);
    printf("character");
    if (i == 0) printf(":  ");
    else printf("s: ");
    /* do it */
    make_it(words[i]);
    printf("\n");
  }
  /* debugging */
  /* for (i = 0; i < MAX_WORD_LENGTH; ++i) printf("idx %d\t=\t%d\t\n", i, words[i]); */
  return 0;
}
