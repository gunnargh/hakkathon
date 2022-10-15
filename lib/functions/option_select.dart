import 'dart:convert';
import 'dart:io';
/*
Create a function called OptionSelect which takes in a list of options,
prints them out to the user and asks for the user to select an option.

It should then print something like

List<String> options = ['BurgerKing', 'McDonalds'];
int idx = OptionSelect('Where do you want to eat?', options );
and returns the users answer.

Where do you want to eat?
[1] BurgerKing
[2] McDonalds
Bonus point!
Can you make it so that if the user does not select a correct option,
that the function will simply ask the user again to input an answer?

 */

int OptionSelect(String statement, List<String> options) {
  List<String> options = ['hit', 'stay'];
  bool trueorfalse = true;
  while (trueorfalse) {
    print(statement);

    for (int i = 0; i < options.length; i++) {
      print("${i + 1 } ${options[i]}");
    }

    String input = stdin.readLineSync(encoding: Encoding.getByName("UTF-8"));
    result = int.tryParse(input);
    return result;
  }
}