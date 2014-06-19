#include <stdio.h>

main() {
  int c, holder, running = 0;
  while ((c = getchar()) != EOF) {
    if (c != ' ') {
      putchar(c);
      running = 0; 
    }
    if ((c == ' ')  && (running == 0)) {
      putchar('\n');
      running = 1; 
    }
  }
}
