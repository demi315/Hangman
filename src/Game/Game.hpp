/*****************************************************************
# File:		Game.hpp
# Author:	Ignacio de Miguel Bernal
# Date:		November 2024
#         
******************************************************************/
#pragma once

#include <string>
#include <iostream>
#include <Player.hpp>


class Game {
private:

	Player* players[2];
	bool single_player;

public:
	//Constructors
	Game(std::string player_name);
	Game(std::string player_1_name, std::string player_2_name);
	
};