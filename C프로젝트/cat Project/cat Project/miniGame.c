#include "start.h"
#include "miniGame.h"

#include <time.h>
#define Right 77
#define Left 75
#define WIDTH 80  //����
#define HEIGHT 20 //����
#define GAME_DURATION 10  // ���� �ð�(��)
#define MAPX 3
#define MAPY 2

int starX = 0;
int starY = 0;
int score = 0;
int x = 0;
int y = 0;

time_t startTime;

void timeCnt() {
    time_t currentTime = time(NULL);
    int remainingTime = GAME_DURATION - (int)difftime(currentTime, startTime);
    gotoxy(25, 3);
    int digitCount = printf("���� �ð�: %d", remainingTime);
    for (int i = 0; i < digitCount; i++) {
        printf("\b"); //������ ��µ� ������ �����ϴ�.
    }
    // ����� ���� ���
    gotoxy(35, 3);
    printf("%d \n", remainingTime);

}

void playBoard() {
    system("cls");
    timeCnt();
    gotoxy(25, 5);
    printf("���� 0�� �Ծ��ٳ�!");
    gotoxy(20, 10);
    printf("�������������������\n");
    gotoxy(20, 11);
    printf("��                                ��\n");
    gotoxy(20, 12);
    printf("��                                ��\n");
    gotoxy(20, 13);
    printf("��                                ��\n");
    gotoxy(20, 14);
    printf("��                                ��\n");
    gotoxy(20, 15);
    printf("��                                ��\n");
    gotoxy(20, 16);
    printf("��                                ��\n");
    gotoxy(20, 17);
    printf("��                                ��\n");
    gotoxy(20, 18);
    printf("��                                ��\n");
    gotoxy(20, 19);
    printf("��                                ��\n");
    gotoxy(20, 20);
    printf("��                                ��\n");
    gotoxy(20, 21);
    printf("��                                ��\n");
    gotoxy(20, 22);
    printf("��                                ��\n");
    gotoxy(20, 23);
    printf("��                                ��\n");
    gotoxy(20, 24);
    printf("��                                ��\n");
    gotoxy(20, 25);
    printf("�������������������\n");

    int playerX = 22, playerY = 22;
    starX = (rand() % (30)) + 22;
    starY = 11;
    gotoxy(playerX, playerY);
    printf(" /��/�� \n");
    gotoxy(playerX, playerY + 1);
    printf("( o.o ) \n");
    gotoxy(playerX, playerY + 2);
    printf(" > ^ <  \n");

    gotoxy(starX, starY);
    printf("��");
    while (1) {
        gotoxy(0, 0);
        timeCnt();
        // ���� �÷��̾�� ����� ��
        if ((starX >= playerX - 2 && starX <= playerX + 2) && (starY >= playerY && starY <= playerY + 2)) {
            score++;
            starX = (rand() % (30)) + 22; // ���ο� ���� ���� ��ġ
            starY = 11; // ���� ���� ��ġ �ʱ�ȭ

            gotoxy(25, 5);
            printf("���� %d�� �Ծ��ٳ�!", score);
        }
        // ���� �Ʒ��� �������� ����
        if (starY < 24) {
            Sleep(100);
            gotoxy(starX, starY);
            printf("   "); // ���� ��ġ�� �� �����
            starY++; // �Ʒ��� �̵�
            SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), FOREGROUND_RED | FOREGROUND_GREEN);
            gotoxy(starX, starY);
            printf("��"); // ���ο� ��ġ�� �� ���
            SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
        }

        else {
            gotoxy(starX, starY);
            printf("   \n");
            gotoxy(playerX, playerY);
            printf(" /��/�� \n");
            gotoxy(playerX, playerY + 1);
            printf("( o.o ) \n");
            gotoxy(playerX, playerY + 2);
            printf(" > ^ <  \n");
            starX = (rand() % (30)) + 22; // ���ο� ���� ���� ��ġ
            starY = 11; // ���� ���� ��ġ �ʱ�ȭ
        }

        // Ű �Է��� ��ٸ��� �ʰ� �ݺ��ϴ� ���� ����ؼ� Ȯ��
        if (_kbhit()) {
            char key = _getch();
            switch (key) {
            case 75: // ���� �̵�
                if (playerX > 22) {
                    gotoxy(playerX, playerY);
                    printf("          ");
                    gotoxy(playerX, playerY + 1);
                    printf("          ");
                    gotoxy(playerX, playerY + 2);
                    printf("          ");
                    playerX-=4;
                    gotoxy(playerX, playerY);
                    printf(" /��/�� \n");
                    gotoxy(playerX, playerY + 1);
                    printf("( o.o ) \n");
                    gotoxy(playerX, playerY + 2);
                    printf(" > ^ <  \n");
                }
                break;
            case 77: // ������ �̵�
                if (playerX < 42) {
                    gotoxy(playerX, playerY);
                    printf("          ");
                    gotoxy(playerX, playerY + 1);
                    printf("          ");
                    gotoxy(playerX, playerY + 2);
                    printf("          ");
                    playerX+=4;
                    gotoxy(playerX, playerY);
                    printf(" /��/�� \n");
                    gotoxy(playerX, playerY + 1);
                    printf("( o.o ) \n");
                    gotoxy(playerX, playerY + 2);
                    printf(" > ^ <  \n");
                }
                break;
            }
        }
        if (difftime(time(NULL), startTime) >= GAME_DURATION)
            return 0;
    }
    }
    void updateStar() {
        starY++;
        if (starY == y - 1) {
            if (starX == x) {
                score++;
            }
            starX = (rand() % (x / 10)) * 10;
            starY = 0;
        }
        Sleep(100);
    }

    void miniGameReset() {
        starX = 0;
        starY = 0;
        score = 0;
        x = 0;
        y = 0;
        startTime = 0;
    }

    int menuMini() {
        int z = 33, j = 22;
        gotoxy(z, j);
        while (1) {
            SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
            gotoxy(z, 22);
            printf("�������� ���ư���\n");
            gotoxy(z, 23);
            printf("����\n");

            if (j == 22) {
                SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
                gotoxy(z, 22);
                printf("�������� ���ư���\n");
            }
            else if (j == 23) {
                SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
                gotoxy(z, 22);
                printf("�������� ���ư���\n");
                SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
                gotoxy(z, 23);
                printf("����\n");
            }
            char ch = _getch();
            switch (ch) {
            case 72:
                if (j > 22) j--;
                break;
            case 80:
                if (j < 23) j++;
                break;
            case 13:
                if (j == 22) {
                    miniGameReset();
                    return 3;
                }
                if (j == 23)return 0;
            }
           
        }
    }

    int miniGame() {
        system("cls");
        startTime = time(NULL);     // ���� ���� �ð� �ʱ�ȭ
        int endGame = 0;
        while (!endGame) {
            // ���� �ð� ����
            time_t currentTime = time(NULL);
            // ������ ������ �ð� �̻� �������� Ȯ��
            if (difftime(currentTime, startTime) >= GAME_DURATION)
                endGame = 1;     // �ð� ����
            playBoard();
            if (endGame)
                break;
        }
        system("cls");  // ���� ���� �� ���� ���� �޽��� ���
        int x = 17, y = 5;
        gotoxy(x, y);
        SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), FOREGROUND_RED);
        printf(" �ââ�      �ââ�     ��    ��   �âââ�\n");
        gotoxy(x, y + 1);
        printf("��     ��  ��      ��  �� �â� ��  ��\n");
        gotoxy(x, y + 2);
        printf("��         �ââââ�  ��  ��  ��  �ââ�\n");
        gotoxy(x, y + 3);
        printf("��    �â� ��      ��  ��  ��  ��  ��\n");
        gotoxy(x, y + 4);
        printf(" �âââ�  ��      ��  ��      ��  �âââ�\n");
        gotoxy(x + 1, y + 6);
        SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), FOREGROUND_BLUE);
        printf("  ����   ��      �� �����  �����\n");
        gotoxy(x + 1, y + 7);
        printf(" ��     �� ��      �� ��        ��      ��\n");
        gotoxy(x + 1, y + 8);
        printf(" ��     ��  ��    ��  ����    �����\n");
        gotoxy(x + 1, y + 9);
        printf(" ��     ��   ��  ��   ��        ��      ��\n");
        gotoxy(x + 1, y + 10);
        printf("  ����       ��     �����  ��      ��\n\n");
        gotoxy(x + 10, y + 15);
        SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
        printf("������ ���� %d����ŭ �Կ���ٳ�!", score);
        gotoxy(17, 19);
        printf(" /��/�� \n");
        gotoxy(17, 20);
        printf("( o.o ) \n");
        gotoxy(17, 21);
        printf(" > ^ <  \n");
        return menuMini();
    }
