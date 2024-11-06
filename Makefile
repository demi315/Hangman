#*****************************************************************
# File:		Makefile
# Author:	Ignacio de Miguel Bernal
# Date:		November 2024
# Coms:		'make all' to compile the whole program
#         
#*****************************************************************
#---------------------------------------------------------
CC=g++


EXE=Hangman
LIBRARY=src
MAIN_DIR=${LIBRARY}
MAIN=${MAIN_DIR}/main
GAME_DIR=${LIBRARY}/Game
GAME=${GAME_DIR}/Game
PLAYER_DIR=${LIBRARY}/Player
PLAYER=${PLAYER_DIR}/Player

CPPFLAGS=-I. -I${GAME_DIR} -I${PLAYER_DIR} -I${MAIN_DIR} -O2 -std=c++20 # Compilation Flags

all: ${EXE}

#-----------------------------------------------------------
# GAMES
${GAME}.o: ${GAME}.hpp ${GAME}.cpp
	${CC} -c ${CPPFLAGS} ${GAME}.cpp -o ${GAME}.o

#-----------------------------------------------------------
# PLAYERS
${PLAYER}.o: ${PLAYER}.hpp ${PLAYER}.cpp
	${CC} -c ${CPPFLAGS} ${PLAYER}.cpp -o ${PLAYER}.o

#-----------------------------------------------------------	
# MAIN	
${MAIN}.o: ${MAIN}.cpp 
	${CC} -c ${CPPFLAGS} ${MAIN}.cpp -o ${MAIN}.o

# Linkado
${EXE}: ${GAME}.o ${MAIN}.o ${PLAYER}.o
	${CC} ${GAME}.o ${MAIN}.o ${PLAYER}.o -o ${EXE}

#-----------------------------------------------------------	
# LIMPIEZA
clean:
	$(RM) ${GAME}.o
	$(RM) ${PLAYER}.o
	$(RM) ${MAIN}.o
	$(RM) ${EXE} 