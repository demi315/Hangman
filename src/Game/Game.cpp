/*****************************************************************
# File:		Game.cpp
# Author:	Ignacio de Miguel Bernal
# Date:		November 2024
#
******************************************************************/
#include <Game.hpp>
#include <string>

Game::Game(std::string player_name){
	single_player = true;
	players[0] = new Player(player_name);
}

Game::Game(std::string player_1_name, std::string player_2_name){
	single_player = false;
	players[0] = new Player(player_1_name);
	players[1] = new Player(player_2_name);
}
