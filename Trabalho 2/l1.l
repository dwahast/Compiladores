DIGITO	[0-9]
LETRA	[a-zA-Z]
ID	{LETRA}({LETRA}|{DIGITO}|"_")*
CS "/""*"
CE "*""/"


%%

"//".*			printf("Comment: %s\n", yytext);		
{CS}({LETRA}|{DIGITO}|"\\"|"/"|"_"|"="|"."|","|"!"|"@"|"?")*{CE} printf("Comment: %s\n", yytext);

"class"		printf("Reservada: %s\n",yytext);
"public"	printf("Reservada: %s\n",yytext);
"extends"	printf("Reservada: %s\n",yytext);

"this"		printf("Reservada: %s\n",yytext);
"new" 		printf("Reservada: %s\n",yytext);
"lenght"	printf("Reservada: %s\n",yytext);
"main"		printf("Reservada: %s\n",yytext);

"static"	printf("Tipo: %s\n",yytext);
"void"		printf("Tipo: %s\n",yytext);
"String"	printf("Tipo: %s\n",yytext);
"boolean"	printf("Tipo: %s\n",yytext);
"int"		printf("Tipo: %s\n",yytext);

"return"	printf("Ffunc: %s\n",yytext);

"if"		printf("Condition: %s\n",yytext);
"else"		printf("Condition: %s\n",yytext);
"while"		printf("Wloop: %s\n",yytext);

"true"		printf("TBool: %s\n",yytext);		
"false"		printf("FBool: %s\n",yytext);
"!"			printf("not: %s\n",yytext);

"&&"		printf("BinaryOperator: %s\n",yytext);
"<"			printf("BinaryOperator: %s\n",yytext);
"+"			printf("BinaryOperator: %s\n",yytext);
"-"			printf("BinaryOperator: %s\n",yytext);
"*"			printf("BinaryOperator: %s\n",yytext);

"{"			printf("AChaves: %s\n",yytext);
"}"			printf("Fchaves: %s\n",yytext);

"("			printf("Aparenteses: %s\n",yytext);
")"			printf("Fparenteses: %s\n",yytext);

"["			printf("Acolchetes: %s\n",yytext);
"]"			printf("Fcolchetes: %s\n",yytext);

"="			printf("Attrib: %s\n",yytext);
","			printf("Reservada: %s\n",yytext);
"."			printf("Reservada: %s\n",yytext);
";"			printf("Fcomando: %s\n",yytext);



{DIGITO}+		{printf("Inteiro: %s\n",yytext);}
{DIGITO}+"."{DIGITO}+	{printf("Real: %s\n",yytext);} 
{ID}			{printf("var: %s\n",yytext);}
%%

/*** USER CODE SECTION***/
int yywrap();

main(){
  yylex();
}

int yywrap(){
 return 1;
}
