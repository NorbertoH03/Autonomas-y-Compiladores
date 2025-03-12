%option noyywrap
%{
	#include<stdio.h>
%}

%%
[A-Z]{4}[0-9]{2}[0-1][0-9][0-3][0-9][A-Z0-9]{3} {return 1;}
%%
int main()
{
	int token;
	while(1){
		token = yylex();
		if(token==1){
			printf("Es una RFC valido\n");
		}
	};
	return 0;
}