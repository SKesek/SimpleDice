import 'dart:math';
import 'package:dice_pro/const.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DicePokerScreen extends StatefulWidget {
  const DicePokerScreen({super.key});

  @override
  State<DicePokerScreen> createState() => _DicePokerState();
}

class _DicePokerState extends State<DicePokerScreen> {
  int diceNumber1 = Random().nextInt(6) + 1;
  int diceNumber2 = Random().nextInt(6) + 1;
  int diceNumber3 = Random().nextInt(6) + 1;
  int diceNumber4 = Random().nextInt(6) + 1;
  int diceNumber5 = Random().nextInt(6) + 1;

  double opacity1 = 1;
  double opacity2 = 1;
  double opacity3 = 1;
  double opacity4 = 1;
  double opacity5 = 1;

  int whichRound = 1;

  final PanelController _panelController = PanelController();

  void rollDice() {
    setState(() {
      if (opacity1 == 1) {
        diceNumber1 = Random().nextInt(6) + 1;
      }
      if (opacity2 == 1) {
        diceNumber2 = Random().nextInt(6) + 1;
      }
      if (opacity3 == 1) {
        diceNumber3 = Random().nextInt(6) + 1;
      }
      if (opacity4 == 1) {
        diceNumber4 = Random().nextInt(6) + 1;
      }
      if (opacity5 == 1) {
        diceNumber5 = Random().nextInt(6) + 1;
      }
    });
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('How to play?'),
            content: const Text('This is how you play'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: SlidingUpPanel(
        controller: _panelController,
        minHeight: 0,
        maxHeight: screenHeight * 4 / 6,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        panel: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 70,
                  ),
                  const Text(
                    'Rules',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      _panelController.close();
                    },
                    child:
                        const Icon(Icons.close, color: Colors.black, size: 30),
                  ),
                ],
              ),
              const RoleBlock(
                  boldText: 'Five-of-a-Kind',
                  normalText: '— all five dice with the same value.'),
              const RoleBlock(
                  boldText: 'Four-of-a-Kind',
                  normalText: '— four dice with the same value.'),
              const RoleBlock(
                  boldText: 'Full House',
                  normalText:
                      ' — Pair of one value and Three-of-a-Kind of another.'),
              const RoleBlock(
                  boldText: 'Six High Straight',
                  normalText: ' — dice with values from 2 through 6.'),
              const RoleBlock(
                  boldText: 'Five High Straight',
                  normalText: ' — dice with values from 1 through 5.'),
              const RoleBlock(
                  boldText: 'Three-of-a-Kind',
                  normalText: ' — three dice with the same value.'),
              const RoleBlock(
                  boldText: 'Two Pairs',
                  normalText: ' — two pairs of dice, each with the same value'),
              const RoleBlock(
                  boldText: 'Pair',
                  normalText: ' — two dice with the same value.'),
              const RoleBlock(
                  boldText: 'Nothing',
                  normalText:
                      ' — five mismatched dice forming no sequence longer than four.'),
            ],
          ),
        ),
        body: Container(
          decoration: kBackgroundColor(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      tooltip: "Rules",
                      onPressed: () {
                        _panelController.open();
                      },
                    )
                  ],
                ),
                Expanded(
                  child: Opacity(
                    opacity: opacity1,
                    child: IconButton(
                      icon: Image.asset('images/$diceNumber1.png'),
                      onPressed: () {
                        turnOpacity(opacity1);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Opacity(
                    opacity: opacity2,
                    child: IconButton(
                      icon: Image.asset('images/$diceNumber2.png'),
                      onPressed: () {
                        turnOpacity(opacity2);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Opacity(
                    opacity: opacity3,
                    child: IconButton(
                      icon: Image.asset('images/$diceNumber3.png'),
                      onPressed: () {
                        turnOpacity(opacity3);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Opacity(
                    opacity: opacity4,
                    child: IconButton(
                      icon: Image.asset('images/$diceNumber4.png'),
                      onPressed: () {
                        turnOpacity(opacity4);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Opacity(
                    opacity: opacity5,
                    child: IconButton(
                      icon: Image.asset('images/$diceNumber5.png'),
                      onPressed: () {
                        turnOpacity(opacity5);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 30, right: 10, left: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 8, backgroundColor: Colors.blueAccent),
                        onPressed: () {
                          rollDice();
                          setState(() {
                            whichRound = 2;
                            opacity1 = 0.5;
                            opacity2 = 0.5;
                            opacity3 = 0.5;
                            opacity4 = 0.5;
                            opacity5 = 0.5;
                          });
                        },
                        child: const Text(
                          'Roll',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  void turnOpacity(double opacityNumber) {
    if (whichRound == 2) {
      if (opacityNumber == 1) {
        setState(() {
          opacityNumber = 0.5;
        });
      } else {
        setState(() {
          opacityNumber = 1;
        });
      }
    } else {}
  }
}

class RoleBlock extends StatelessWidget {
  const RoleBlock({
    super.key,
    required this.boldText,
    required this.normalText,
  });
  final String boldText;
  final String normalText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Icons.keyboard_arrow_right_outlined),
          Flexible(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: boldText,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  TextSpan(
                      text: normalText,
                      style: const TextStyle(fontSize: 14, color: Colors.black))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
