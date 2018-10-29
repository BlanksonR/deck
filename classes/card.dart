class Card{
  String suit;
  String rank;

  Card({this.suit, this.rank});

  toString(){
    return "$rank of $suit";
  }
}