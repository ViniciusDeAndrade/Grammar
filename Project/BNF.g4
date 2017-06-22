grammar BNF;
options {
  language = Java;
}
@header{
	package com.ufpe.cin.gfads.grammar;
}

//simbols
SETA: '->';

//FDR4 (vou tentar ignorar essa parte no ANTLR, e deixar o fdr4 lidar com a entrada no "behaviors"
FDR4: .*?;

//keywords
CONFIGURATION: 'configuration';
COMP: 'components';
CONN: 'connectors';
ATTACHMENT: 'attachment';
BEHAVIORS: 'behaviors';


//lexers
ID: STRING | (STRING INT);
STRING: [a-zA-Z]+ ; // lexer
INT: [0-9]+;
LINE_COMMENT: '//' .*? '\r'? '\n' ->skip;
COMMENT:  '*/' .*? '*/' -> skip;
WS: [ \t\r\n]+ -> skip;  // whitespace

configuration: CONFIGURATION ID '{' comp_decl conn_decl attachment behave_def'}';
component_var: ID;
connector_var: ID;
//isso aqui que tentarei pegar
comp_decl: COMP (component_var | ',' component_var)+ ';'; // mesma coisa que em baixo, porem para componente
conn_decl: CONN (connector_var | ',' connector_var)+ ';'; // conn connector1 || conn Connector1, Connector2 ...
attachment: ATTACHMENT '{' (component_var 'connects' component_var 'through' connector_var ';')+ '}';
behave_def: BEHAVIORS'{' (FDR4 | (FDR4 SETA)+)+ '}' ;


