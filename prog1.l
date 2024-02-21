//check if it recognises string ab
%{
#include<stdio.h>
int count=0;
%}

%%
(a|b)+ {count++;}
\n {printf("%d\n", count);
    count=0;}
%%

int yywrap()
{
return 1;
}
int main(){
yylex();
return 0;
}
