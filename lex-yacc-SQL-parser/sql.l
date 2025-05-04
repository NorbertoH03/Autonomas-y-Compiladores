%{
#include <stdio.h>
#include <string.h>
#include "src/struct.h"
#include "src/y.tab.h"

int numerorighe=0;
%}
%option noyywrap
%%
select			return SELECT;
from			return FROM;
where			return WHERE;
and			return AND;
or			return OR;
[*]			return *yytext;
[,]			return *yytext;
[=]			return *yytext;
[<]			return *yytext;
[>]			return *yytext;
[a-zA-Z][a-zA-Z0-9]* 	{
			yylval.Mystr = (symbtbl*)malloc(sizeof(symbtbl)); 
			yylval.Mystr->column = strdup(yytext);
			yylval.Mystr->table = NULL;
			yylval.Mystr->type = 0;
			return IDENTIFIER;
			}
[0-9]+			{
			return CONST;
			}
\n			{++yylval.numerorighe; return NL;}
[ \t]+			/* ignore whitespace */

%%

YYSTYPE yylval;