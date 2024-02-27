//write a number to count the number of characters, word, space and line in a given file.


%{
#include<stdio.h>
int c=0, w=0,s=0,l=0;
%}

%%
[a-zA-z]+ (w++; c+=yyleng; printf("%s\n", yytext);}

[ ]   {s++; c++; }
\n    {1++; c++;}
.     {C++; }
%% 

int yywrap() {
return 1;
}

main(int argc, char *argv[]) {
yyin-fopen(argv[1], "r");
yylex();
printf("word=%d characters=%d space=%d line=%d", w,c,s,l); 
}