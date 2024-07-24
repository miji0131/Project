#include <stdio.h>		// ��� ����
#include <windows.h>
#include <string.h>
#include <stdlib.h>
#include <conio.h>
#include"start.h"
#include"miniGame.h"
int code = 0;
int storyStart = 0;

#pragma once


#define UP 0		// define ����
#define DOWN 1

#define color 9		// ���õ� ���ڻ�
#define default 15	// �⺻ ���ڻ�

void setconsleview() {		// �ܼ�â ũ��
	system("mode con:cols=80 lines=30");
}
void gotoxy(int x, int y) {		// Ŀ�� ��ǥ
	COORD pos = { x, y };
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), pos);
}
void slowPrint(unsigned long speed, const char* s) { //Ÿ�� ȿ�� �Լ�
	int i = 0;
	while (s[i] != 0) {
		printf("%c", s[i++]);
		fflush(stdout);
		Sleep(speed);
	}
}
void hideCursor() { //�����̴� Ŀ�� ����
	HANDLE consoleHandle = GetStdHandle(STD_OUTPUT_HANDLE);
	CONSOLE_CURSOR_INFO ConsoleCursor;
	ConsoleCursor.bVisible = 0;
	ConsoleCursor.dwSize = 1;
	SetConsoleCursorInfo(consoleHandle, &ConsoleCursor);
}

int story() {
	system("cls");
	SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
	printf("�����������������������������������������\n");
	printf("��                                                                            ��\n");
	slowPrint(1, "��      ���õ� ���������� �Ƹ�����Ʈ�� �Ϸ� ����...                           ��\n");
	printf("��                                                                            ��\n");
	slowPrint(1, "��      ���ϸ����� �Ȱ��� ������ �ϻ��� �ݺ�..                                ��\n");
	printf("��                                                                            ��\n");
	slowPrint(1, "��      �����ϴ�. ����� �̷��� ��ư��°ɱ� ?                                ��\n");
	printf("��                                                                            ��\n");
	slowPrint(1, "��      ... ��, ���� ����?                                                    ��\n");
	printf("��                                                                            ��\n");
	slowPrint(1, "��      (�ڼ��� ���캻��)                                                     ��\n");
	printf("��                                                                            ��\n");
	printf("��     /|____/|                                                               ��\n");
	printf("��   =( ��w �� )=                                                             ��\n");
	printf("��     )      (  //                                                           ��\n");
	printf("��    ( __ __  )//                                                            ��\n");
	printf("��                                                                            ��\n");
	slowPrint(1, "��-> ����̰� §~~!!!                                                         ��\n");
	printf("��                                                                            ��\n");
	slowPrint(1, "��   �� ���� ����̴�. �Ϳ���~ ��� �ұ�?                                   ��\n");
	printf("��                                                                            ��\n");
	printf("��                                                                            ��\n");
	slowPrint(1, "��                            Enter�� ���� �������� �Ѿ�� (DAY 1) >>>>>    ��\n");
	printf("��                                                                            ��\n");
	printf("��                                                                            ��\n");
	printf("�����������������������������������������\n");
	
}

int drawmenu() {
	int x = 65, y = 18;
	gotoxy(x, y);

	while (1) {

		SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
		gotoxy(x, 18);
		printf("�����ϱ�\n");
		gotoxy(x, 20);
		printf("�̴ϰ���\n");
		gotoxy(x, 22);
		printf("��������\n");


		if (y == 18) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 18);
			printf("�����ϱ�\n");

		}
		else if(y == 20){
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 18);
			printf("�����ϱ�\n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 20);
			printf("�̴ϰ���\n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 22);
			printf("��������\n");
		}
		else{
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 18);
			printf("�����ϱ�\n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 20);
			printf("�̴ϰ���\n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 22);
			printf("��������\n");
			}

		char ch = _getch();


		switch (ch) {
		case 72:
			if (y > 18)y-=2;
			break;
		case 80:
			if (y < 22)y+=2;
			break;
		case 13:
			if (y == 18)return 1;
			if (y == 20)return 2;
			else return 0;
		}
	}
}

int startScreen(void) {
	int code = 0;
	while(1){
		setconsleview();
		SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);

		printf("�����������������������������������������\n");
		printf("��                                                                            ��\n");
		printf("��                 _  _  _ _|_   _ _ _|_   _  _ _  . _  __|_                  ��\n");
		printf("��                 _VV(/_(/_ |   (_(_| |   |_)| (_) |(/_(_ |             *    ��\n");
		printf("��                                        |       L|                          ��\n");
		printf("��    '      *         *          ,MMM8&&&&.                     *            ��\n");
		printf("��                          *     MMM88&&&&&                                  ��\n");
		printf("��                                MMMM88&&&&    .    *                        ��\n");
		printf("��      *                         MM88&&&&&&                                  ��\n");
		printf("��                   *            'MM88&&&&'                   *              ��\n");
		printf("��            '                         *                                *    ��\n");
		printf("��              *       /|/|_      __/||      *                               ��\n");
		printf("��                     /    -|    /-  ~|  .             *                     ��\n");
		printf("��                    |    = Y = T_ =  /                                      ��\n");
		printf("��        '       *    )==* (`    `) ~(                             *         ��\n");
		printf("��  *                 /     |     /    |          *                           ��\n");
		printf("��                   /      |     ) ~  (                                      ��\n");
		printf("��                  /       |    /    ~ |                                     ��\n");
		printf("��             *   |        /   |~   ~  |                                     ��\n");
		printf("��    __________/|_|__    _/_/|_|__~____/_/|_/|_/|_/|_/|_                     ��\n");
		printf("��    |  |  |  |  |  | ) ) |  |  | ((  |  |  |  |  |  |                       ��\n");
		printf("��    |  |  |  |  |  | )_) |  |  |  )) |  |  |  |  |  |                       ��\n");
		printf("��    |  |  |  |  |  |  |  |  |  | (/  |  |  |  |  |  |                       ��\n");
		printf("��                                                                            ��\n");
		printf("��                                                                            ��\n");
		printf("�����������������������������������������\n");


		code = drawmenu();
		if (code == 1) {
			storyStart = 1;
			story();
			break;
		}
		else if (code == 2) {
			storyStart = 0;
			mini = 1;
			int miniResult = miniGame();
			if (miniResult == 3) {
				continue;
			}
			else if (miniResult == 0) {
				exit(0);
			}break;
		}
		else if (code == 0) {
			exit(0);
		}
	}
	return 0;
}
