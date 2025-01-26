import 'dart:io';
import 'dart:math';

class Lucky {
    int luckyNum = 0;

    Lucky() {
        String minNum = Platform.environment['MIN'] ?? '10';
        String maxNum = Platform.environment['MAX'] ?? '100';

        int minimumNum = int.parse(minNum);
        int maximumNum = int.parse(maxNum);
        // print('$minimumNum, $maximumNum');

        var randomNum = Random();
        luckyNum = minimumNum + randomNum.nextInt(maximumNum - minimumNum + 1);
        // print('Your lucky number is: $luckyNum');
    }
}