%option noyywrap
%{
	#include<stdio.h>
%}

%%
[Aa]plicar {printf("Verbo de aplicacion valido\n");}
[Cc]alcular {printf("Verbo de aplicacion valido\n");}
[Cc]onstruir {printf("Verbo de aplicacion valido\n");}
[Dd]emostrar {printf("Verbo de aplicacion valido\n");}
[Dd]escubrir {printf("Verbo de aplicacion valido\n");}
[Dd]ibujar {printf("Verbo de aplicacion valido\n");}
[Ee]mplear {printf("Verbo de aplicacion valido\n");}
[Ee]sbozar {printf("Verbo de aplicacion valido\n");}
[Ee]xperimentar {printf("Verbo de aplicacion valido\n");}
[Ii]lustrar {printf("Verbo de aplicacion valido\n");}
[Mm]anipular {printf("Verbo de aplicacion valido\n");}
[Mm]odificar {printf("Verbo de aplicacion valido\n");}
[Oo]perar {printf("Verbo de aplicacion valido\n");}
[Pp]reparar {printf("Verbo de aplicacion valido\n");}
[Pp]roducir {printf("Verbo de aplicacion valido\n");}
[Pp]rogramar {printf("Verbo de aplicacion valido\n");}
[Rr]esolver {printf("Verbo de aplicacion valido\n");}
[Uu]tilizar {printf("Verbo de aplicacion valido\n");}
[Ss]olucionar {printf("Verbo de aplicacion valido\n");}
.|\n ;
%%
int main()
{
	yylex();
	return 0;
}