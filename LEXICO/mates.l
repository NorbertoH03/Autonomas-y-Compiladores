%option noyywrap
%{
	#include<stdio.h>
	int c_caracter = 0, c_lineas = 1, c_palabras = 0;
	int palabra = 0;

	int c_ni=0;
	int c_num=0;
	int c_bto=0;
	int c_jo=0;
	int c_digitos=0;
%}

%%

\n		{c_lineas+=1;
		c_caracter+=0;
		if(palabra==1)
			c_palabras+=1;
		palabra=0;}

(" "|["])[Nn]([uU]|\xC3\xBA|\xC3\x9A)[mM][a-zA-ZáéíóúÁÉÍÓÚñÑ0-9]*	{if(palabra==1)
									c_palabras++;
								palabra=0;
								c_caracter += yyleng; c_palabras++; c_num++;}
(" "|["])[Nn]([iI]|\xC3\xA9|\xC3\x9A)[a-zA-ZáéíóúÁÉÍÓÚñÑ]*	{if(palabra==1)
									c_palabras++;
								palabra=0;
								c_palabras++; c_caracter += yyleng; c_ni++;}

(" ")[Bb][a-zA-ZáéíóúÁÉÍÓÚñÑ]*[Tt][Oo]	{if(palabra==1)
						c_palabras++;
					palabra=0;
					c_palabras++; c_caracter += yyleng; c_bto++;}

(" ")[a-zA-ZáéíóúÁÉÍÓÚñÑ]*[Jj][Oo](" ")	{if(palabra==1)
						c_palabras++;
					palabra=0;
					c_palabras++; c_caracter += yyleng; c_jo++;}

[ \t,.!?":]	{c_caracter+=1;
		if(palabra==1)
			c_palabras+=1;
		palabra=0;}


[0-9]			{c_caracter++; palabra = 1; c_digitos++;}
[a-zA-ZáéíóúÁÉÍÓÚñÑ]	{c_caracter+=1; palabra = 1;}

.		{c_caracter+=1;}

%%
int main(int argc, char *argv[]) {
	

	yyin = fopen(argv[1], "r");
	printf("\n\n");

	yylex();
	printf("Saltos de lineas totales: %d\n",c_lineas);
	printf("Total de caracteres: %d\n", c_caracter);
	//printf("Total de espacios blancos: %d\n", c_espacios);
	printf("Total de palabras: %d\n", c_palabras);
	printf("Total de palabras ni...: %d\n", c_ni);
	printf("Total de palabras num...: %d\n", c_num);
	printf("Total de palabras b...to: %d\n", c_bto);
	printf("Total de palabras ...jo: %d\n", c_jo);
	printf("Total de palabras digitos: %d\n", c_digitos);
	return 0;
}