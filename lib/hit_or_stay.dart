import 'dart:io';

import 'functions/status.dart';
import 'functions/card_namer.dart';
import 'functions/deal_card.dart';
import 'functions/option_select.dart';
import 'functions/check_if_busted.dart';

/*
This is a complicated function,which accepts three inputs,

the current player hand (list of integers),
house hand (list of integers)
the current deck (list of integers)

It should be a infinite loop that asks the user if he
wants to draw a card or stay. If he chooses to stay,
then the loop should stop.

If he wants to draw a card, add a card to his hand,
tell him what card he drew and print the current information of the game.

If he busts after drawing this card, break the loop as well.
 */

void HitOrStay(List<int> playerHand, List<int> houseHand, List<int> deck){
List<String> options = ['Hit', 'Stay', 'Quit'];

while(true) {
  int userOptionSelect = OptionSelect('Do you want to Hit or Stay?', options);
  if(userOptionSelect==1) {
    int myCard = DealCard(deck);
    print('Your card is ${CardNamer(myCard)}');
    playerHand.add(myCard);
    if(CheckIfBusted(playerHand)==true) {
      print('You Lose.');
      break;
    }
    Status(playerHand, houseHand);
  }
  if(userOptionSelect==2) {
    print('You stay');
    exit(0);
  }
}
}