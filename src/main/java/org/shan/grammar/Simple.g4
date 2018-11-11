grammar Simple;

//*************************
//****** Lexer rules ******
//*************************
IDENTIFIER
    :   [A-Za-z] [A-Za-z0-9]*
    ;

WHITESPACE
    :   [ \n] -> skip
    ;

//*************************
//***** Parser rules ******
//*************************
simpleFile
    :   definition*
    ;

definition
    :   functionDefinition
    ;

functionDefinition
    :   'function' IDENTIFIER '(' ')' ('returns' type)? '{' functionBody '}'
    ;

functionBody
    :   statement*
    ;

statement
    :   variableDefinition | assignmentStatement | functionInvocation
    ;

variableDefinition
    :   type IDENTIFIER (';' | ('=' functionInvocation)?)
    ;

type
    :   'int' | 'string'
    ;

assignmentStatement
    :   IDENTIFIER '=' functionInvocation
    ;

functionInvocation
    :   IDENTIFIER '(' ')' ';'
    ;
