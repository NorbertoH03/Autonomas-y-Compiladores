%option noyywrap
%{
	#include<stdio.h>
%}

%%
[Rr]esumir {return 1;}
[Cc]ontrastar {return 1;}
[Oo]rgamizar {return 1;}
[Ii]dentificar {return 1;}
[Dd]iferenciar {return 1;}
[Ii]nferir {return 1;}

[Ee]ficiente {return 2;}
[Cc]reativo {return 2;}
[Rr]esiliente {return 2;}
[Oo]ptimista {return 2;}
[Ee]mpatico {return 2;}
[Cc]onfiable {return 2;}

[Yy] {return 3;}
[Oo] {return 3;}
[Pp]ero {return 3;}
[Pp]orque {return 3;}
[Aa]unque {return 3;}
[Ss]i {return 3;}

[Aa] {return 4;}
[Dd]e {return 4;}
[Ee]n {return 4;}
[Pp]or {return 4;}
[Pp]ara {return 4;}
[Cc]on {return 4;}

[Yy]o {return 5;}
[Tt]u {return 5;}
[Ee]l {return 5;}
[Ee]lla {return 5;}
[Nn]osotr[oa]s {return 5;}
[Vv]osotr[oa]s {return 5;}

. {return 0;}
\n ;
%%
int main()
{
	while(1){
		switch(yylex()){
			case 1:
				printf("Verbo de analizar valido\n");
				break;
			case 2:
				printf("Verbo de adjetivos calificativos psotivos valido\n");
				break;
			case 3:
				printf("Verbo de conjunciones valido\n");
				break;
			case 4:
				printf("Verbo de preposiciones valido\n");
				break;
			case 5:
				printf("Verbo de pronombre valido\n");
				break;
			case 0:
				printf("Verbo no valido\n");
		}

	}
	return 0;
}