
#include <time.h>
#pragma once
#define Right 77
#define Left 75
#define WIDTH 80  //����
#define HEIGHT 20 //����
#define GAME_DURATION 10  // ���� �ð�(��)
#define MAPX 3
#define MAPY 2

int starX;
int starY;
int score;
int x;
int y;

int mini;
int miniGame();
int menuMini();
void miniGameReset();
void updateStar();
void playBoard();
void timeCnt();

