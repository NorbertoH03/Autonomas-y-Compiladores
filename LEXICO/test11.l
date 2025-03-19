%option noyywrap
%{
#include <stdio.h>
%}

%%

"//".*                  { printf("Comentario detectado: %s\n", yytext); }
"/*".*"*/"		{ printf("Comentario detectado: %s\n", yytext); }

[ \t\n]                 ;
.                       ;

%%

int main(int argc, char **argv) {
    yylex();
    return 0;
}
