grammar Build;
import Lex;
options {
  language = Java;
}
@header{
	package com.ufpe.cin.gfads.grammar;
}

configuration: CONFIGURATION ID '{' comp_decl conn_decl attachment '}';
comp_decl: COMP (ID | ',' ID)+; // mesma coisa que em baixo, porem para componente
conn_decl: CONN (ID | ',' ID)+; // conn connector1 || conn Connector1, Connector2 ...
attachment: (comp_decl 'connects' comp_decl 'through' conn_decl)+;
//behave_def: ;


