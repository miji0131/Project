#include "day.h"
#include "miniGame.h"
#include "start.h"

int main() {
	hideCursor();
	while (1) {
	startScreen();
	char key = _getch(); //ENTER�� �Է��Ͽ� ���ӽ��۹ޱ�
	if (storyStart == 1 && key == 13) {	//ENTER �Է��ϸ�
		gameLogic();	// ���� ���� ����
		int endingResult = Ending();		// ���� ǥ��
		if (endingResult == 4) {
			initialize();
			continue;
		}
		else if(endingResult == 0) {
			exit(0);
		}
	}
	}
	return 0;
}