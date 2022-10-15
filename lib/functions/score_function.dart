
/*
Create a function called CalculateScore that can calculate the score of a given hand of cards.
The score is blackjack score, so the following rules apply

An ace can either be 1 or 11
10, Jack, Queen and King count as 10

For this score function, we will do it a bit differently than real life.

If a card is an Ace, it's AUTOMATICALLY an 11. Any ace that comes after that
gets the score 1. So if the method gets the hand [1, 1] the score would be 12

  Here are few test cases to test your method against

  hand = [1, 1] -> Score 12
  hand = [13, 1] -> Score 21
  hand = [1, 13, 1] -> Score 22
  hand = [1, 1, 1, 1] -> Score 14
  hand = [11, 13] -> Score 20
  hand = [7, 1] -> Score 18

 */

import 'dart:html';

int CalculateScore(List<int> hand){

//this calculates the score of the hand.
  int CalculateScore(List<int> hand) {
    int score = 0;
    bool aceHasBeenSeen = false;
    for(int card in hand){
      print('Card is $card');
      if(card >= 10) {
        score += 10;
      } else {
        if(card > 1) {
          // Score if card is not ace
          score += card;
        } else {
          // Score if card is ace
          if(aceHasBeenSeen == false) {
            score += 11;
            aceHasBeenSeen = true;
          } else {
            score += 1;
          }
          }
        }
      }
    return score;
    }
}