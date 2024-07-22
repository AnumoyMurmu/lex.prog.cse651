%token NUM ID NL
%left '+' '-'
%left '*' '/'
%%
start : exp NL {printf("valid exp"); exit(0);}
      ;
exp : exp'+'exp
    | exp'-'exp
    | exp'*'exp
    | exp'/'exp
    | NUM
    | ID
    ;
%%
int yyerror(char *msg) {printf("invalid"); return 0;}
int main()
{
yyparse();
return 0;
}
