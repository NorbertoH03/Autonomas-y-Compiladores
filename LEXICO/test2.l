%option noyywrap
%{
	#include<stdio.h>
%}

%%
[0-9]+.[0-9]+ {return 1; }
%%
int main()
{
	int token;
	while(1){
		token = yylex();
		if(token==1){
			printf("Es numero decimal \n");
		}
	};
	return 0;
}