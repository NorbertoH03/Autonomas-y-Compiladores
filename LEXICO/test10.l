%option noyywrap
%{
#include <stdio.h>
%}

%%

"auto"      { return 1; }
"break"     { return 1; }
"case"      { return 1; }
"const"     { return 1; }
"continue"  { return 1; }
"default"   { return 1; }
"do"        { return 1; }
"else"      { return 1; }
"enum"      { return 1; }
"extern"    { return 1; }
"for"       { return 1; }
"goto"      { return 1; }
"if"        { return 1; }
"register"  { return 1; }
"return"    { return 1; }
"signed"    { return 1; }
"sizeof"    { return 1; }
"static"    { return 1; }
"struct"    { return 1; }
"switch"    { return 1; }
"typedef"   { return 1; }
"union"     { return 1; }
"unsigned"  { return 1; }
"volatile"  { return 1; }
"while"     { return 1; }

"int"       { return 2; }
"float"     { return 2; }
"double"    { return 2; }
"char"      { return 2; }
"void"      { return 2; }
"long"      { return 2; }
"short"     { return 2; }
"String"    { return 2; }
"bool"      { return 2; }

[ \t\n]     ;
.           ;

%%

int main() {
    while(1){
		switch(yylex()){
			case 1:
				printf("Palabra reservada identificada\n");
				break;
			case 2:
				printf("Tipo de dato identificado\n");
				break;
			case 0:
				printf("Verbo no valido\n");
		}

	}
    return 0;
}