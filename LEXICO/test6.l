%option noyywrap
%{
	#include<stdio.h>
%}

%%
[a-zA-Z0-9._%+-]+@uaeh.edu.com.mx {return 1;}
%%
int main()
{
	int token;
	while(1){
		token = yylex();
		if(token==1){
			printf("Es un correo institucional valido\n");
		}
	};
	return 0;
}