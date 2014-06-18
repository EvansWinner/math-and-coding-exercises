#include <stdio.h>

main() {
  int c, running = 0;
  while ((c = getchar()) != EOF) {
    if ((c != '\n') && (c != ' ')) {
      putchar(c);
      running = 0; 
    }
    else if (((c == ' ') || (c == '\n')) && (running == 0)) {
      putchar('\n');
      running = 1; 
    }
  }
}
