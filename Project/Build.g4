grammar Build;
import Lex;
options {
  language = Java;
}
@header{
	package com.ufpe.cin.gfads.grammar;
}

configuration: CONFIGURATION ID '{' comp_decl conn_decl attachment '}';
comp_var: ID;
conn_var: ID;
comp_decl: COMP (comp_var | ',' comp_var)+ ';'; // mesma coisa que em baixo, porem para componente
conn_decl: CONN (conn_var | ',' conn_var)+ ';'; // conn connector1 || conn Connector1, Connector2 ...
attachment: ATTACHMENT '{' (comp_var 'connects' comp_var 'through' conn_var ';')+ '}';
//behave_def: ;


