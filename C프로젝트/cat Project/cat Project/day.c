#include "start.h"
#include "day.h"

int heart = 0;
int hidden = 0;

int cat1() {
	int x = 20, y = 5;
	gotoxy(x, y);
	printf("                         _\n");
	gotoxy(x, y+1);
	printf("                         \\\n");
	gotoxy(x, y+2);
	printf("        |\\_/|           ||\n");
	gotoxy(x, y+3);
	printf("        )- - '._.-""""-.=-  //\n");
	gotoxy(x, y+4);
	printf("       = \Y_= /          \//\n");
	gotoxy(x, y+5);
	printf("         `''`\       /    /\n");
	gotoxy(x, y+6);
	printf("             |    \ |   /\n");
	gotoxy(x, y+7);
	printf("              \\   /- \ \\ \n");
	gotoxy(x, y+8);
	printf("             ((_| ((_/\n");


}

int day1() {
	int x = 0, y = 18;
	printf("\n");
	printf("================================================================================\n");
	slowPrint(1, "�� Day.1 ����̸� �����ƴ�. ��� �ұ�?\n");
	slowPrint(1, "1.������ �ش�. \n");
	slowPrint(1, "2.������ �������� �Ĵٸ� ����. \n");
	slowPrint(1, "3.'������'��� �Ҹ�ģ��. \n");
	printf("================================================================================\n");

	while (1) {
		SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
		gotoxy(x, 17);
		printf("1.������ �ش�. \n");
		gotoxy(x, 18);
		printf("2.������ �������� �Ĵٸ� ����. \n");
		gotoxy(x, 19);
		printf("3.'������'��� �Ҹ�ģ��. \n");


		if (y == 17) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 17);
			printf("1.������ �ش�. \n");

		}

		else if (y == 18) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.������ �ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 18);
			printf("2.������ �������� �Ĵٸ� ����. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 19);
			printf("3.'������'��� �Ҹ�ģ��. \n");
		}

		else if (y == 19) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.������ �ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 18);
			printf("2.������ �������� �Ĵٸ� ����. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 19);
			printf("3.'������'��� �Ҹ�ģ��. \n");
		}

		int ch = _getch();
		switch (ch) {
		case 72:
			if (y > 17) y--;
			break;
		case 80:
			if (y < 19) y++;
			break;
		case 13:
			if (y == 17) {
				heart += 3;
				return 0;
			}
			else if (y == 18) {
				heart += 2;
				return 0;
			}
			else if (y == 19) {
				heart -= 3;
				return 0;
			}
		}
	}

}

int cat2() {
	SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
	int x = 20, y = 5;
	gotoxy(x, y);
	printf("    ( ?  )               _\n");
	gotoxy(x, y + 1);
	printf("      v                  \\\n");
	gotoxy(x, y + 2);
	printf("        |\\_/|           ||\n");
	gotoxy(x, y + 3);
	printf("        )- - '._.-""""-.=-  //\n");
	gotoxy(x, y + 4);
	printf("       = \Y_= /          \//\n");
	gotoxy(x, y + 5);
	printf("         `''`\       /    /\n");
	gotoxy(x, y + 6);
	printf("             |    \ |   /\n");
	gotoxy(x, y + 7);
	printf("              \\   /- \ \\ \n");
	gotoxy(x, y + 8);
	printf("             ((_| ((_/\n");


}

int day2() {
	int x = 0, y = 17;
	printf("\n");
	printf("================================================================================\n");
	slowPrint(1, "�� Day.2 ���� �ô� ����̸� �� �����ƴ�. ��� �ұ�?\n");
	slowPrint(1, "1.������ �ش�. \n");
	slowPrint(1, "2.������ ��������. \n");
	slowPrint(1, "3.������ ����ش�. \n");
	printf("================================================================================\n");

	while (1) {
		SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
		gotoxy(x, 17);
		printf("1.������ �ش�. \n");
		gotoxy(x, 18);
		printf("2.������ ��������.\n");
		gotoxy(x, 19);
		printf("3.������ ����ش�. \n");


		if (y == 17) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 17);
			printf("1.������ �ش�. \n");

		}

		else if (y == 18) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.������ �ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 18);
			printf("2.������ ��������. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 19);
			printf("3.������ ����ش�. \n");
		}

		else if (y == 19) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.������ �ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 18);
			printf("2.������ ��������. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 19);
			printf("3.������ ����ش�.\n");
		}

		int ch = _getch();
		switch (ch) {
		case 72:
			if (y > 17) y--;
			break;
		case 80:
			if (y < 19) y++;
			break;
		case 13:
			if (y == 17) {
				heart += 3;
				return 0;
			}
			else if (y == 18) {
				heart -= 3;
				return 0;
			}
			else if (y == 19) {
				heart += 1;
				return 0;
			}
		}
	}


}

int cat3() {
	SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
	int x = 20, y = 8;
	gotoxy(x, y);
	printf("         (zzz...)\n");
	gotoxy(x, y+1);
	printf("          v\n");
	gotoxy(x, y+2);
	printf("  |\\      _,,,,--,,_\n");
	gotoxy(x, y+3);
	printf(" / , `. - '`' - ,\\ - ;,\n");
	gotoxy(x, y+4);
	printf("|, 4 - ) ), , __,\\ (;;\n");
	gotoxy(x, y+5);
	printf("'---''(.'--'  `-'`.)`'\n");
}

int day3() {
	int x = 0, y = 17;
	printf("\n");
	printf("================================================================================\n");
	slowPrint(1, "�� Day.3 ����̰� ������ �ڰ� �ִ�. ��� �ұ�?\n");
	slowPrint(1, "1.������ ���ڸ��� ���� ������ �����ش�. \n");
	slowPrint(1, "2.��~ �ٶ��� �Ҿ �����. \n");
	slowPrint(1, "3.�ƹ��͵� ���� ����ä ��������. \n");
	printf("================================================================================\n");

	while (1) {
		SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
		gotoxy(x, 17);
		printf("1.������ ���ڸ��� ���� ������ �����ش�. \n");
		gotoxy(x, 18);
		printf("2.��~ �ٶ��� �Ҿ �����. \n");
		gotoxy(x, 19);
		printf("3.�ƹ��͵� ���� ����ä ��������. \n");


		if (y == 17) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 17);
			printf("1.������ ���ڸ��� ���� ������ �����ش�. \n");

		}

		else if (y == 18) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.������ ���ڸ��� ���� ������ �����ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 18);
			printf("2.��~ �ٶ��� �Ҿ �����. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 19);
			printf("3.�ƹ��͵� ���� ����ä ��������. \n");
		}

		else if (y == 19) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.������ ���ڸ��� ���� ������ �����ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 18);
			printf("2.��~ �ٶ��� �Ҿ �����. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 19);
			printf("3.�ƹ��͵� ���� ����ä ��������. \n");
		}

		int ch = _getch();
		switch (ch) {
		case 72:
			if (y > 17) y--;
			break;
		case 80:
			if (y < 19) y++;
			break;
		case 13:
			if (y == 17) {
				heart += 3;
				return 0;
			}
			else if (y == 18) {
				heart -= 3;
				return 0;
			}
			else if (y == 19) {
				heart += 0;
				return 0;
			}
		}
	}


}

int cat4() {
	SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
	int x = 20, y = 2;
	gotoxy(x, y);
	printf("                      __     __,\n");
	gotoxy(x, y + 1);
	printf("                      ��,`~""~` / \n");
	gotoxy(x, y + 2);
	printf("      .-=-.           /    -  - ��\n");
	gotoxy(x, y + 3);
	printf("     / .-. ��         {  =    Y  }=\n");
	gotoxy(x, y + 4);
	printf("    (_/   �� ��       ��      / \n");
	gotoxy(x, y + 5);
	printf("           �� ��      _/` ' ` '`b\n");
	gotoxy(x, y + 6);
	printf("            �� `.__.-'`         ��-. \n");
	gotoxy(x, y + 7);
	printf("             |               _.' `'-.__)��\n");
	gotoxy(x, y + 8);
	printf("             ��    ;_..--'  /              |\n");
	gotoxy(x, y + 9);
	printf("              |   /  /      |              | \n");
	gotoxy(x, y + 10);
	printf("              �� __)__)      ��           /\n");
	gotoxy(x, y + 11);
	printf("                               '.  __   .'\n");

}

int day4() {
	int x = 0, y = 17;
	printf("\n");
	printf("================================================================================\n");
	slowPrint(1, "�� Day.4 ����̰� ��Һ����� ������ ����ִ�. ��� �ұ�?\n");
	slowPrint(1, "1.���� �����̿� ���� ���� ������ �ִ�. ������ ���´�. \n");
	slowPrint(1, "2.������ ���ļ� �����ش�. \n");
	slowPrint(1, "3.�������ô �Բ� ������ �ο��. \n");
	printf("================================================================================\n");

	while (1) {
		SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
		gotoxy(x, 17);
		printf("1.���� �����̿� ���� ���� ������ �ִ�. ������ ���´�. \n");
		gotoxy(x, 18);
		printf("2.������ ���ļ� �����ش�. \n");
		gotoxy(x, 19);
		printf("3.�������ô �Բ� ������ �ο��. \n");


		if (y == 17) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 17);
			printf("1.���� �����̿� ���� ���� ������ �ִ�. ������ ���´�. \n");

		}

		else if (y == 18) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.���� �����̿� ���� ���� ������ �ִ�. ������ ���´�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 18);
			printf("2.������ ���ļ� �����ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 19);
			printf("3.�������ô �Բ� ������ �ο��. \n");
		}

		else if (y == 19) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.���� �����̿� ���� ���� ������ �ִ�. ������ ���´�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 18);
			printf("2.������ ���ļ� �����ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 19);
			printf("3.�������ô �Բ� ������ �ο��. \n");
		}

		int ch = _getch();
		switch (ch) {
		case 72:
			if (y > 17) y--;
			break;
		case 80:
			if (y < 19) y++;
			break;
		case 13:
			if (y == 17) {
				heart -= 3;
				return 0;
			}
			else if (y == 18) {
				heart += 3;
				return 0;
			}
			else if (y == 19) {
				heart += 0;
				return 0;
			}
		}
	}


}

int cat5() {
	SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
	int x = 20, y = 6;
	gotoxy(x, y);
	printf("                       / ��_ / ��\n");
	gotoxy(x, y + 1);
	printf("       ��  ""            (  - �� - )\n");
	gotoxy(x, y + 2);
	printf("   _____/ /_____  _____(   _u_u  )_______//  \n");
	gotoxy(x, y + 3);
	printf("  /   _  _____________________________��\n");
	gotoxy(x, y + 4);
	printf("|   /                         ||\n");
	gotoxy(x, y + 5);
	printf("     ---""___.                  U\n");
	gotoxy(x, y + 6);
	printf("  __-----=\'\n");
	gotoxy(x, y + 7);
	printf(" |'\n");


}

int day5() {
	int x = 0, y = 18;
	printf("\n");
	printf("================================================================================\n");
	slowPrint(1, "�� Day.5 ����̰� ���� �������� �ö��ִ�. ������ ��Ȳ�̴�. ��� �ұ�?\n");
	slowPrint(1, "1.������ Ÿ�� ����̸� �����Ѵ�. \n");
	slowPrint(1, "2.119�� �Ű��Ѵ�. \n");
	slowPrint(1, "3.���� ��Ұ������̴�...�׳� ����ģ��. \n");
	printf("================================================================================\n");

	while (1) {
		SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
		gotoxy(x, 17);
		printf("1.������ Ÿ�� ����̸� �����Ѵ�. \n");
		gotoxy(x, 18);
		printf("2.119�� �Ű��Ѵ�. \n");
		gotoxy(x, 19);
		printf("3.���� ��Ұ������̴�...�׳� ����ģ��. \n");


		if (y == 17) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 17);
			printf("1.������ Ÿ�� ����̸� �����Ѵ�. \n");

		}

		else if (y == 18) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.������ Ÿ�� ����̸� �����Ѵ�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 18);
			printf("2.119�� �Ű��Ѵ�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 19);
			printf("3.���� ��Ұ������̴�...�׳� ����ģ��. \n");
		}

		else if (y == 19) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.������ Ÿ�� ����̸� �����Ѵ�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 18);
			printf("2.119�� �Ű��Ѵ�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 19);
			printf("3.���� ��Ұ������̴�...�׳� ����ģ��. \n");
		}

		int ch = _getch();
		switch (ch) {
		case 72:
			if (y > 17) y--;
			break;
		case 80:
			if (y < 19) y++;
			break;
		case 13:
			if (y == 17) {
				heart += 3;
				return 0;
			}
			else if (y == 18) {
				heart += 1;
				return 0;
			}
			else if (y == 19) {
				heart -= 3;
				return 0;
			}
		}
	}
}

int cat6() {
	SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
	int x = 20, y = 9;
	gotoxy(x, y);
	printf("          __\n");
	gotoxy(x, y + 1);
	printf(" \ ______/ V`- ,              /��     _. - ._.) \n");
	gotoxy(x, y + 2);
	printf("  }        /~~              /-  `- '  (  `--'\n");
	gotoxy(x, y + 3);
	printf(" /_)^ --,r'         vs      `-  , ) -   > ) ��\n");
	gotoxy(x, y + 4);
	printf("|b      |b                     (.' ��)  (.'  -'\n");


}

int day6() {
	int x = 0, y = 18;
	printf("\n");
	printf("================================================================================\n");
	slowPrint(1, "�� Day.6 ����̿� �������� �ο���ִ�. ��� �ұ�?\n");
	slowPrint(1, "1.����� ���� ���, �������� �ѾƳ���. \n");
	slowPrint(1, "2.������ ���� ���, ����̸� �ѾƳ���. \n");
	slowPrint(1, "3.���� �� �� ����ϸ�, �߸��� ������ ���̴�. \n");
	printf("================================================================================\n");

	while (1) {
		SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
		gotoxy(x, 17);
		printf("1.����� ���� ���, �������� �ѾƳ���. \n");
		gotoxy(x, 18);
		printf("2.������ ���� ���, ����̸� �ѾƳ���. \n");
		gotoxy(x, 19);
		printf("3.���� �� �� ����ϸ�, �߸��� ������ ���̴�. \n");


		if (y == 17) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 17);
			printf("1.����� ���� ���, �������� �ѾƳ���. \n");

		}

		else if (y == 18) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.����� ���� ���, �������� �ѾƳ���. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 18);
			printf("2.������ ���� ���, ����̸� �ѾƳ���. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 19);
			printf("3.���� �� �� ����ϸ�, �߸��� ������ ���̴�. \n");
		}

		else if (y == 19) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.����� ���� ���, �������� �ѾƳ���. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 18);
			printf("2.������ ���� ���, ����̸� �ѾƳ���. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 19);
			printf("3.���� �� �� ����ϸ�, �߸��� ������ ���̴�. \n");
		}

		int ch = _getch();
		switch (ch) {
		case 72:
			if (y > 17) y--;
			break;
		case 80:
			if (y < 19) y++;
			break;
		case 13:
			if (y == 17) {
				heart += 3;
				return 0;
			}
			else if (y == 18) {
				heart -= 3;
				return 0;
			}
			else if (y == 19) {
				heart += 0;
				return 0;
			}
		}
	}
}

int cat7() {
	SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
	int x = 20, y = 10;
	gotoxy(x, y);
	printf("    /|_/|  !!    _______\n");
	gotoxy(x, y + 1);
	printf("   ( o.o )      /       |\n");
	gotoxy(x, y + 2);
	printf("   ( _uu_)     |         ===3\n");
	gotoxy(x, y + 3);
	printf("                \_______/\n");


}

int day7() {
	int x = 0, y = 18;
	printf("\n");
	printf("================================================================================\n");
	slowPrint(1, "�� Day.7 ����̰� a++�ѿ� ��� ���� �������� ���� �����ִ�. ��� �ұ�?\n");
	slowPrint(1, "1.���� ���ۿ� �޷����� �ѿ츦 ��ͼ� �ش�. \n");
	slowPrint(1, "2.���� ���� ����... ����̿� �Բ� �������� ���⸸ �Ѵ�. \n");
	slowPrint(1, "3.�ѿ츦 ������... ���� ���� �԰�ʹ�. ��������� ���� �ʴ´�. \n");
	printf("================================================================================\n");

	while (1) {
		SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
		gotoxy(x, 17);
		printf("1.���� ���ۿ� �޷����� �ѿ츦 ��ͼ� �ش�. \n");
		gotoxy(x, 18);
		printf("2.���� ���� ����... ����̿� �Բ� �������� ���⸸ �Ѵ�. \n");
		gotoxy(x, 19);
		printf("3.�ѿ츦 ������... ���� ���� �԰�ʹ�. ��������� ���� �ʴ´�. \n");


		if (y == 17) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 17);
			printf("1.���� ���ۿ� �޷����� �ѿ츦 ��ͼ� �ش�. \n");

		}

		else if (y == 18) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.���� ���ۿ� �޷����� �ѿ츦 ��ͼ� �ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 18);
			printf("2.���� ���� ����... ����̿� �Բ� �������� ���⸸ �Ѵ�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 19);
			printf("3.�ѿ츦 ������... ���� ���� �԰�ʹ�. ��������� ���� �ʴ´�. \n");
		}

		else if (y == 19) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.���� ���ۿ� �޷����� �ѿ츦 ��ͼ� �ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 18);
			printf("2.���� ���� ����... ����̿� �Բ� �������� ���⸸ �Ѵ�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 19);
			printf("3.�ѿ츦 ������... ���� ���� �԰�ʹ�. ��������� ���� �ʴ´�. \n");
		}

		int ch = _getch();
		switch (ch) {
		case 72:
			if (y > 17) y--;
			break;
		case 80:
			if (y < 19) y++;
			break;
		case 13:
			if (y == 17) {
				heart += 5;
				return 0;
			}
			else if (y == 18) {
				heart += 0;
				return 0;
			}
			else if (y == 19) {
				heart += 0;
				return 0;
			}
		}
	}
}

int cat8() {
	SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
	int x = 20, y = 5;
	gotoxy(x, y);
	printf("   /       /       /    _\n");
	gotoxy(x, y + 1);
	printf("        ./        ./     \\\n");
	gotoxy(x, y + 2);
	printf("   ./   |\\_/|           ||\n");
	gotoxy(x, y + 3);
	printf("        )- - '._.-""""-.=-  //\n");
	gotoxy(x, y + 4);
	printf("       = \Y_= /          \//\n");
	gotoxy(x, y + 5);
	printf("    /    `''`\       /    /\n");
	gotoxy(x, y + 6);
	printf("/            |    \ |   /\n");
	gotoxy(x, y + 7);
	printf("  ./          \\   /- \ \\ \n");
	gotoxy(x, y + 8);
	printf("       /     ((_| ((_/\n");

}

int day8() {
	int x = 0, y = 18;
	printf("\n");
	printf("================================================================================\n");
	slowPrint(1, "�� Day.8 �� �´�. ����̰� ������ ���� �����ִ�. ��� �ұ�?\n");
	slowPrint(1, "1.����� �����ش�. \n");
	slowPrint(1, "2.�ڽ����� ������ش�. \n");
	slowPrint(1, "3.���� ������ �Ű��ش�. \n");
	printf("================================================================================\n");

	while (1) {
		SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
		gotoxy(x, 17);
		printf("1.����� �����ش�. \n");
		gotoxy(x, 18);
		printf("2.�ڽ����� ������ش�. \n");
		gotoxy(x, 19);
		printf("3.���� ������ �Ű��ش�. \n");


		if (y == 17) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 17);
			printf("1.����� �����ش�. \n");

		}

		else if (y == 18) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.����� �����ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 18);
			printf("2.�ڽ����� ������ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 19);
			printf("3.���� ������ �Ű��ش�. \n");
		}

		else if (y == 19) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.����� �����ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 18);
			printf("2.�ڽ����� ������ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 19);
			printf("3.���� ������ �Ű��ش�. \n");
		}

		int ch = _getch();
		switch (ch) {
		case 72:
			if (y > 17) y--;
			break;
		case 80:
			if (y < 19) y++;
			break;
		case 13:
			if (y == 17) {
				heart += 3;
				return 0;
			}
			else if (y == 18) {
				heart -= 1;
				return 0;
			}
			else if (y == 19) {
				heart += 1;
				return 0;
			}
		}
	}
}

int cat9() {
	SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
	int x = 20, y = 3;
	gotoxy(x, y);
	printf("                      __     __,\n");
	gotoxy(x, y + 1);
	printf("                      ��,`~""~` /    |          |\n");
	gotoxy(x, y + 2);
	printf("      .-=-.           /    -  - �� |          |\n");
	gotoxy(x, y + 3);
	printf("     / .-. ��         {  =    Y  }=|          |\n");
	gotoxy(x, y + 4);
	printf("    (_/   �� ��       ��      /    |          |\n");
	gotoxy(x, y + 5);
	printf("           �� ��      _/` ' ` '`b   |          |\n");
	gotoxy(x, y + 6);
	printf("            �� `.__.-'`         ��-.           |\n");
	gotoxy(x, y + 7);
	printf("             |               _.' `'-.__)/\n");
	gotoxy(x, y + 8);
	printf("             ��    ;_..--'       /     ;      |\n");
	gotoxy(x, y + 9);
	printf("              |   /  /         /   .         | \n");
	gotoxy(x, y + 10);
	printf("              �� __)__)      ��_____--___    /\n");



}

int day9() {
	int x = 0, y = 18;
	printf("\n");
	printf("================================================================================\n");
	slowPrint(1, "�� Day.9 ����̰� ���ڱ� ���������̸� ���� ���. ��� �ұ�?\n");
	slowPrint(1, "1.����������...? ����̸� ���󰣴�. \n");
	slowPrint(1, "2.������Ű�� ���� ���ٵ�´�. \n");
	slowPrint(1, "3.�谡 ���°� ������ ��Ḧ �ش�. \n");
	printf("================================================================================\n");

	while (1) {
		SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
		gotoxy(x, 17);
		printf("1.����������...? ����̸� ���󰣴�. \n");
		gotoxy(x, 18);
		printf("2.������Ű�� ���� ���ٵ�´�. \n");
		gotoxy(x, 19);
		printf("3.�谡 ���°� ������ ��Ḧ �ش�. \n");


		if (y == 17) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 17);
			printf("1.����������...? ����̸� ���󰣴�. \n");

			int ch = _getch();
			switch (ch) {
			case 72:
				if (y > 17) y--;
				break;
			case 80:
				if (y < 19) y++;
				break;
			case 13:
				break;
			}
			hidden_ending();
		}
		

		else if (y == 18) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.����������...? ����̸� ���󰣴�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 18);
			printf("2.������Ű�� ���� ���ٵ�´�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 19);
			printf("3.�谡 ���°� ������ ��Ḧ �ش�. \n");
		}

		else if (y == 19) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.����������...? ����̸� ���󰣴�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 18);
			printf("2.������Ű�� ���� ���ٵ�´�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 19);
			printf("3.�谡 ���°� ������ ��Ḧ �ش�. \n");
		}

		int ch = _getch();
		switch (ch) {
		case 72:
			if (y > 17) y--;
			break;
		case 80:
			if (y < 19) y++;
			break;
		case 13:
			if (y == 17) {
				heart += 2;
				hidden = 1;
				return 0;
			}
			else if (y == 18) {
				heart -= 1;
				return 0;
			}
			else if (y == 19) {
				heart += 1;
				return 0;
			}
		}
	}
}

int cat10() {
	SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
	int x = 20, y = 9;
	gotoxy(x, y);
	printf("      (...) \n");
	gotoxy(x, y + 1);
	printf("         v   /��     _. - ._.) \n");
	gotoxy(x, y + 2);
	printf("            /-  `- '  (  `--'\n");
	gotoxy(x, y + 3);
	printf("            `-  , ) -   > ) ��\n");
	gotoxy(x, y + 4);
	printf("             (.' ��)  (.'  -'  ,,,\n");

}

int day10() {
	int x = 0, y = 18;
	printf("\n");
	printf("================================================================================\n");
	slowPrint(1, "�� Day.10 ����̰� �� �ڸ� ����´�. ��� �ұ�?\n");
	slowPrint(1, "1.�Ƹ�����Ʈ �ϴ� ������ ������� ���д�. \n");
	slowPrint(1, "2.�ɽ��Ѱ�����. ���������� ����ش�. \n");
	slowPrint(1, "3.�ڴ�. \n");
	printf("================================================================================\n");

	while (1) {
		SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
		gotoxy(x, 17);
		printf("1.�Ƹ�����Ʈ �ϴ� ������ ������� ���д�. \n");
		gotoxy(x, 18);
		printf("2.�ɽ��Ѱ�����. ���������� ����ش�. \n");
		gotoxy(x, 19);
		printf("3.�ڴ�. \n");


		if (y == 17) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 17);
			printf("1.�Ƹ�����Ʈ �ϴ� ������ ������� ���д�. \n");

		}

		else if (y == 18) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.�Ƹ�����Ʈ �ϴ� ������ ������� ���д�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 18);
			printf("2.�ɽ��Ѱ�����. ���������� ����ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 19);
			printf("3.�ڴ�. \n");
		}

		else if (y == 19) {
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 17);
			printf("1.�Ƹ�����Ʈ �ϴ� ������ ������� ���д�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), default);
			gotoxy(x, 18);
			printf("2.�ɽ��Ѱ�����. ���������� ����ش�. \n");
			SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
			gotoxy(x, 19);
			printf("3.�ڴ�. \n");
		}

		int ch = _getch();
		switch (ch) {
		case 72:     // ��
			if (y > 17) y--;
			break;
		case 80:		// �Ʒ�
			if (y < 19) y++;
			break;
		case 13:		
			if (y == 17) {
				heart += 3;
				return 0;
			}
			else if (y == 18) {
				heart += 1;
				return 0;
			}
			else if (y == 19) {
				heart -= 3;
				return 0;
			}
		}
	}
}

int gameLogic() {
	setconsleview();
	int dayCnt = 1;
	while (dayCnt <= 10) {
		switch (dayCnt) {
		case 1:
			system("cls");
			cat1();
			day1();
		case 2:
			system("cls");
			cat2();
			day2();
		case 3:
			system("cls");
			cat3();
			day3();
		case 4:
			system("cls");
			cat4();
			day4();

		case 5:
			system("cls");
			cat5();
			day5();

		case 6:
			system("cls");
			cat6();
			day6();
		case 7:
			system("cls");
			cat7();
			day7();

		case 8:
			system("cls");
			cat8();
			day8();

		case 9:
			system("cls");
			cat9();
			day9();

		case 10:
			system("cls");
			cat10();
			day10();


		}
		char key = _getch();
		if (hidden == 1) {
			break;
		}
		

		if (key == 13) {
				dayCnt++;
		}
		break;
	}
	return 0;
}