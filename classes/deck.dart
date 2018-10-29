import 'card.dart';

class Deck{
  List<Card> cards = [];

  List<String> ranks = ["Ace", "Two", "Three", "Four", "Five"];
  List<String> suits = ["Diamond", "Heart", "Spade", "Club"];

  Deck(){
    for(var suit in suits){
      for(var rank in ranks){
        var card = Card(suit: suit, rank: rank);
        cards.add(card);
      }
    }
  }

  void shuffle(){
    cards.shuffle();
  }

  List<Card> cardWithSuit(String suit){
    return cards.where((card) => card.suit == suit );
  }

  deal(int handSize){
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    return hand;
  }

  removeCard(String suit, String rank){
   cards.removeWhere((card){
      return card.suit == suit && card.rank == rank;
    });
  }

  removeSuit(String suit){
    cards.removeWhere((card){
      return card.suit == suit;
    });
  }

  @override
    String toString() {
      return cards.toString();
    }
}