%{
#include <stdio.h>
int count = 0;
%}

%%
[0-9]+    { printf("number: %s\n", yytext); count++; }
. ;
\n {return 0;} /*treats enter as EOF*/

%%

int yywrap() { return 1; }

int main() {
    yylex();
    printf("\nNumber of digits in input is %d\n", count);
    return 0;
}
