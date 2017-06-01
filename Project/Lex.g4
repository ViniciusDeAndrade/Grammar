lexer grammar Lex;
options{
	language = Java;
}
@header {
	package com.ufpe.cin.gfads.lexer;
}



//keywords
COMP: 'comp';
CONN: 'conn';
CONFIGURATION: 'config';
ATTACHMENT: 'attachment';
BEHAVIOR: 'behave';


//lexers
ID: STRING | (STRING INT);
STRING: [a-zA-Z]+ ; // lexer
INT: [0-9]+;
LINE_COMMENT: '//' .*? '\r'? '\n' ->skip;
COMMENT:  '*/' .*? '*/' -> skip;
WS: [ \t\r\n]+ -> skip;  // whitespace
