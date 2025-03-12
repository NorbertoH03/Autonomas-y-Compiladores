%option noyywrap
%{
	#include<stdio.h>
%}

%%
[a-zA-Z][a-zA-Z0-9_]* { return 1;}
%%
int main()
{
	int token;
	while(1){
		token = yylex();
		if(token==1){
			printf("Es una variable valida\n");
		}
	};
	return 0;
}