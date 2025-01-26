import 'package:lucky_number/lucky.dart';

void main(List<String> arguments) {
    if (arguments.isEmpty) {
        print('Please provide at least one name');
        return;
    }

    for (var name in arguments) {
        // print('Hi $name');

        String capitalizeName = name[0].toUpperCase() + name.substring(1);

        var lucky = Lucky();

        print('Hello $capitalizeName. Your lucky number is ${lucky.luckyNum}');
    }
}