%{
#include <stdio.h>
%}

%%
"if"|"else"|"while"|"for"|"int"|"float" {printf("\nKeyword: %s\n", yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("\nIdentifier: %s\n", yytext);}
[0-9]+ {printf("\nNumber: %s\n", yytext);}
[+\-*/=]   { printf("\nOperator: %s\n", yytext); }
[ \t]+ ;
. { printf("\nUnknown: %s\n", yytext); }
\n {return 0;}
%%

int yywrap() { return 1; } 

int main(){
    printf("Enter code:\n");
    yylex();
    return 0;
}