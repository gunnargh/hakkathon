/*
Create a function that takes in FOUR inputs.

houseHand which is list of integers
playerHand which is a list of integers
currentBet which is an integer
currentBankRoll which is an integer

Google the rules of black jack and calculate if house or player won the match.
Subtract / Add bets where applicable and return the updated currentBankRoll
of the user, which should have decreased/increased based on if he won or not.
 */

import 'package:BlackJack/functions/functions.dart';

int CheckWinner(List<int> playerHand, List<int> houseHand, int currentBankRoll,
    int currentBet) {
  currentBankRoll = 0;
  currentBet = 0;
  int playerScore = CalculateScore(playerHand);
  int houseScore = CalculateScore(houseHand);
  print(playerScore);
  print(houseScore);
  if (playerScore > houseScore) {
    print("player wins");
  } else if (playerScore < houseScore) {
    print("house wins");
  } else if (playerScore == houseScore) {
    print("its a draw");
  } else if (playerScore == 21) {
    print("you win!!");
  }

  return 100 ;
}
