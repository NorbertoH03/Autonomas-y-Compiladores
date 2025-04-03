%option noyywrap
%{
	#include<stdio.h>
	int c_westeros=0, c_invernalia=0,c_desembarco=0,c_nidodeaguilas=0,c_altojardin=0,c_aguasdulces=0,c_rocadragon=0,
	c_rocacasterly=0,c_bastiondetormentas=0,c_dorne=0;

	int c_stark=0,c_arryn=0,c_tully=0,c_greyjoy=0,c_lannister=0,c_tyrell=0,c_martell=0,c_baratheon=0,c_targaryen=0;

	int c_eddard=0,c_catelyn=0,c_arya=0,c_sansa=0,c_robert=0,c_joffrey=0,c_stannis=0,c_aegon=0,c_daenerys=0,
	c_aerys=0,c_tywin=0,c_jaime,c_tyrion,c_cersei=0;
%}

%%
[Ww]"esteros" {c_westeros++;}
[Ii]"nvernalia" {c_invernalia++;}
[Dd]"esembarco "[Dd]"el "[Rr]"ey" {c_desembarco++;}
[Nn]"ido "[Dd]"e "(\xC3\x81|\xC3\xA1|a|A)"guilas" {c_nidodeaguilas++;}
[Aa]"ltojard"(\xC3\xAD|i)"n" {c_altojardin++;}
[Aa]"guasdulces" {c_aguasdulces++;}
[Rr]"ocadrag"(o|\xC3\xB3)"n" {c_rocadragon++;}
[Rr]"oca "[Cc]"asterly" {c_rocacasterly++;}
[Bb]"asti"(\xC3\xB3|o)"n "[Dd]"e "[Tt]ormentas {c_bastiondetormentas++;}
[Dd]"orne" {c_dorne++;}

[Ss]"tark" {c_stark++;}
[Aa]"rryn" {c_arryn++;}
[Tt]"ully" {c_tully++;}
[Gg]"reyjoy" {c_greyjoy++;}
[Ll]"annister" {c_lannister++;}
[Tt]"yrell" {c_tyrell++;}
[Mm]"artell" {c_martell++;}
[Bb]"aratheon" {c_baratheon++;}
[Tt]"argaryen" {c_targaryen++;}

[Ee]"ddard" {c_eddard++;}
[Cc]"atelyn" {c_catelyn++;}
[Aa]"rya" {c_arya++;}
[Ss]"ansa" {c_sansa++;}
[Rr]"obert" {c_robert++;}
[Jj]"offrey" {c_joffrey++;}
[Ss]"tannis" {c_stannis++;}
[Aa]"egon" {c_aegon++;}
[Dd]"aenerys" {c_daenerys++;}
[Aa]"erys" {c_aerys++;}
[Tt]"ywin" {c_tywin++;}
[Jj]"aime" {c_jaime++;}
[Tt]"yrion" {c_tyrion++;}
[Cc]"ersei" {c_cersei++;}

.
%%
int main(int argc, char *argv[]) {
	

	yyin = fopen(argv[1], "r");
	printf("\n\n");

	yylex();
	printf("Westeros: %d\n", c_westeros);
	printf("Invernalia: %d\n", c_invernalia);
	printf("Desembarco del Rey: %d\n", c_desembarco);
	printf("Nido de aguilas: %d\n", c_nidodeaguilas);
	printf("Altojardin: %d\n", c_altojardin);
	printf("Aguasdulces: %d\n", c_aguasdulces);
	printf("Rocadragon: %d\n", c_rocadragon);
	printf("Roca Casterly: %d\n", c_rocacasterly);
	printf("Bastion de Tormentas: %d\n", c_bastiondetormentas);
	printf("Dorne: %d\n\n", c_dorne);


	printf("Stark: %d\n",c_stark);
	printf("Arryn: %d\n",c_arryn);
	printf("Tully: %d\n",c_tully);
	printf("Greyjoy: %d\n",c_greyjoy);
	printf("Lannister: %d\n",c_lannister);
	printf("Tyrell: %d\n",c_tyrell);
	printf("Martell: %d\n",c_martell);
	printf("Baratheon: %d\n",c_baratheon);
	printf("Targaryen: %d\n\n",c_targaryen);


	printf("Eddard: %d\n",c_eddard);
	printf("Catelyn: %d\n",c_catelyn);
	printf("Arya: %d\n",c_arya);
	printf("Sansa de la casa Stark: %d\n",c_sansa);

	printf("Robert: %d\n",c_robert);
	printf("Joffrey: %d\n",c_joffrey);
	printf("Stannis de la casa Baratheon: %d\n",c_stannis);

	printf("Aegon: %d\n",c_aegon);
	printf("Daenerys: %d\n",c_daenerys);
	printf("Aerys de la casa de Targaryen: %d\n",c_aerys);
	
	printf("Tywin: %d\n",c_tywin);
	printf("Jaime: %d\n",c_jaime);
	printf("Tyrion: %d\n",c_tyrion);
	printf("Cersei de la casa de Lannister: %d\n",c_cersei);
	return 0;
}
