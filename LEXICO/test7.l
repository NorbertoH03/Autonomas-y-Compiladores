%option noyywrap
%{
	#include <stdio.h>
	#include <ctype.h>
%}

%%
. { printf("%c", tolower(yytext[0])); }
\n ;
%%

int main() {
    yylex();
    return 0;
}