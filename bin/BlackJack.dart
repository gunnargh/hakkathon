import 'package:BlackJack/functions/functions.dart';
import 'package:BlackJack/lib.dart';
import 'package:BlackJack/functions/welcome.dart';
/*
  Can you puzzle the methods together to form the game?
 */

void main() {
  Welcome();

  List<int> deck = ShuffledDeck();
  List<int> playerHand = [];
  List<int> houseHand = [];
  int bankRoll = BuyIn();

  while(bankRoll > 0) {
    int bet = PlaceBet(bankRoll);
    InitialDeal(playerHand, houseHand, deck);
    Status(playerHand, houseHand);
  }
}