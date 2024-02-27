//lex program to count negative and positive integers

%{
#include<stdio.h>
int pos=0;
int neg=0;
%}

%%
[+][0-9]+ {pos++}
[-][0-9]+ {neg++;}
%%

yywrap (){
return 1;
}

main(int argc, char *argv[]){
yyin=fopen(argv[1], "r");
yylex();
printf("positive num=%d, negative num=%d", pos, neg);
}