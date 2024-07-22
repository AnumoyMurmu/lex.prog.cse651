%{
#include<stdio.h>
#include "y.tab.h"
%}
%%
[0-9]+ {return NUM;}
[a-z] [a-z0-9]* {return ID;}
\n {return NL;}
. {return yytext[0];}
%%
int yywra() { return 0;}
