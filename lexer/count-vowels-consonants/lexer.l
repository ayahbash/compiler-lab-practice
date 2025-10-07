%{
#include <stdio.h>
int vowels = 0;
int consonants = 0;
%}

%%
[aeiouAEIOU] {vowels++;}
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {consonants++;}
. ; /*ignores the rest*/
\n {return 0;} /*treats enter as EOF*/
%%

int yywrap() {return 1; }

int main(){
    yylex();
    printf("\nVowels: %d\nConsonants: %d\n", vowels, consonants);
    return 0;
}