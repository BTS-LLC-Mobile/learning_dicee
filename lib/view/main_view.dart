import 'package:flutter/material.dart';
import 'package:learning_dicee/viewmodel/view_model.dart';


// Public class
class DicePageStlFull extends StatefulWidget {
  const DicePageStlFull({super.key});

  @override
  State<DicePageStlFull> createState() => _DicePageStlFullState();
}


// Honestly...I would have left this class alonewith the function in here for
// randomizing the numbers..it's technically a build in function...but that
// goes against MVVM...I still would have done if if I wasn't making a point lol

// Private class
class _DicePageStlFullState extends State<DicePageStlFull> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 1;
  var diceRandomiser = ViewModel();

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  var nextNumberLeft = diceRandomiser.diceRandomiser();
                  leftDiceNumber = nextNumberLeft;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  var nextNumberRight = diceRandomiser.diceRandomiser();
                  rightDiceNumber = nextNumberRight;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}