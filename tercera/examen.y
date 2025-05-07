%{
	#include<stdio.h>
	#include<stdlib.h>
	int yylex(void);
	int yywrap(void);
	int yyerror(char* s);
%}

%union{
	int num;
}

%token <num> NUMBER
%token TIMES

%% 

statement: NUMBER TIMES NUMBER{
		printf("La entrada %d * %d es correcta\n", $1, $3);
		printf("El resultado es: %d\n", $1 * $3);
	}
%%

int main()
{
	while(1){
		yyparse();
	}
	return 1;

int yyerror(char *s) {
    fprintf(stderr, "Error de Sintaxis %s\n", s);
    return 0;
}

	return 1;
}
