all:
	yacc -d -v -t parse.y
	flex rules.lex
	g++ -std=c++11 -g lex.yy.c y.tab.c y.tab.h -o parser -lfl
