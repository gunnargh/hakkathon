import 'package:BlackJack/functions/check_if_busted.dart';

import 'functions/score_function.dart';
import 'functions/card_namer.dart';
import 'functions/deal_card.dart';

/*
Once the player is done with his turn (HitOrStay) the house will play.

Create a function called HousePlays which accepts two inputs,
both are list of integers. One is the current hand of the house,
and the other is the deck.

Implement the normal blackjack rules that a dealer in a real
casino would behave (It depends on the score what if he draws a card or not).

Print the cards and score of the house before he starts,
and inform what card (if any) he draws next, after each draw of card,
show the score of the house.
 */

void HousePlays(List<int> houseHand, List<int> deck){
  print(houseHand);
  while(CalculateScore(houseHand) < 17){
    int houseCard = DealCard(deck);
    houseHand.add(houseCard);
    print('House score is now ${CalculateScore(houseHand)}');
    if(CheckIfBusted(houseHand)){
      print('House draws ${CardNamer(houseCard)}');
      print('House score is now ${CalculateScore(houseHand)}');
      break;
    } else if(CalculateScore(houseHand) >= 17){
      print('House has ${CalculateScore(houseHand)}');
      break;
    }
  }
}
