import 'dart:math';

class ViewModel {
  // Nothing to init since its a part of dart:math

  int diceRandomiser() {
    var element = Random().nextInt(6) + 1;
    return element;
  }

}