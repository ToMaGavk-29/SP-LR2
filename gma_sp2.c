#include "stdio.h"

short Abs(short a) {
	return a < 0 ? -1 * a : a;
}

int main() {
	short arr[10] = {-11000, -40, 56, 62, -74, -70, 199, -98, -19, 82};
	short answer = 0;
	for (int i = 0; i < 10; i++) {
		answer += Abs(arr[i]);
	}

	printf("%d\n", answer);
	return 0;
}
