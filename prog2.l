%{
//Check vowels and consonants in a given string.
#include<stdio.h>
int v=0, c=0;
%}

%%
[aeiou] {v++;}
[b-df-hj-np-tv-z] {c++;}
%%

int yywrap() {return 1;}
main()
{
yylex();
printf("vowels=%d consonants=%d",v,c);
}