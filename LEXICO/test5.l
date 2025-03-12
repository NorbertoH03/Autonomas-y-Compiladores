%option noyywrap
%{
	#include<stdio.h>
%}

%%
[A-Z]{4}[0-9]{2}[0-1][0-9][0-3][0-9][HM]{1}[A-Z]{2}[A-Z]{3}[0-9A-Z]{1}[0-9]{1}  {return 1;}
%%
int main()
{
	int token;
	while(1){
		token = yylex();
		if(token==1){
			printf("Es un CURP valido\n");
		}
	};
	return 0;
}