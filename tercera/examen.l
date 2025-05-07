%{
	#include<stdio.h>
	#include "y.tab.h"
	extern YYSTYPE yylval;
	int yyerror(char *s);
%}

/*SECCION DE REGLAS*/
%%
[0-9]+ { yylval.num = atoi(yytext); return NUMBER;}
"*" { return TIMES;}
[ \t\f\v] {}
. {return *yytext;}
%%

int yywrap(void)
{
	return 1;
}

int yyerror(char* s){
fprintf(stderr, "Error de Sintaxis %s\n", s);
return 0;
}
