import 'dart:math';
import 'package:dice_pro/const.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../styles/role_block.dart';

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
  List rankingList = [];

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
            title: Text(
              'How to play?',
              style: const TextStyle(
                  color: Colors.black, fontSize: 25, fontFamily: 'Lobster'),
            ),
            content: Text(
              'The game consists of two rounds. The first round consists of throwing 5 dice. In the second round, you have to choose which dice you want to throw again. The player with the highest-ranking hand wins.',
              style: const TextStyle(
                  color: Colors.black, fontSize: 20, fontFamily: 'Lobster'),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'OK',
                  style: const TextStyle(
                      color: Colors.black, fontSize: 20, fontFamily: 'Lobster'),
                ),
              ),
            ],
          );
        },
      );
    });
  }

  String rollNextButtonText() {
    if (whichRound == 3) {
      return 'Next game';
    } else {
      return 'Roll';
    }
  }

  String showRanking() {
    int numParis = 0;
    bool triple = false;

    if (rankingList.isEmpty) {
    } else {
      //Five of Kind check
      bool five = true;
      int checkVal = rankingList[0];
      for (int i = 1; i < rankingList.length; i++) {
        if (rankingList[i] != checkVal) {
          five = false;
        }
      }
      if (five == true) {
        return 'Five-of-a-Kind';
      }
      //Four of Kind check
      int count = 0;
      for (var i in rankingList) {
        for (var j in rankingList) {
          if (i == j) {
            count++;
          }
        }
        if (count == 4) {
          return 'Four-of-a-Kind';
        }
        if (count == 3) {
          triple = true;
        }
        if (count == 2) {
          numParis++;
        }
        count = 0;
      }
      if (triple == true && numParis == 2) {
        return 'Full House';
      }
      if (triple == true) {
        return 'Three-of-a-Kind';
      }
      if (numParis == 4) {
        return 'Two Pairs';
      }
      if (numParis == 2) {
        return 'Pair';
      }

      //Six or five High Straight check
      if (rankingList[0] == 1 &&
          rankingList[1] == 2 &&
          rankingList[2] == 3 &&
          rankingList[3] == 4 &&
          rankingList[4] == 5) {
        return 'Five High Straigth';
      }
      if (rankingList[0] == 2 &&
          rankingList[1] == 3 &&
          rankingList[2] == 4 &&
          rankingList[3] == 5 &&
          rankingList[4] == 6) {
        return 'Six High Straigth';
      }
    }
    return 'nothing';
  }

  double showResult() {
    if (whichRound == 3) {
      return 1;
    } else {
      return 0;
    }
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
                  Text('Rules',
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Lobster')),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 60,
                    ),
                    Opacity(
                      opacity: showResult(),
                      child: Text('You have ${showRanking()}',
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: 'Lobster')),
                    ),
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
                        if (whichRound == 2) {
                          if (opacity1 == 1) {
                            setState(() {
                              opacity1 = 0.5;
                            });
                          } else {
                            setState(() {
                              opacity1 = 1;
                            });
                          }
                        }
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
                        if (whichRound == 2) {
                          if (opacity2 == 1) {
                            setState(() {
                              opacity2 = 0.5;
                            });
                          } else {
                            setState(() {
                              opacity2 = 1;
                            });
                          }
                        }
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
                        if (whichRound == 2) {
                          if (opacity3 == 1) {
                            setState(() {
                              opacity3 = 0.5;
                            });
                          } else {
                            setState(() {
                              opacity3 = 1;
                            });
                          }
                        }
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
                        if (whichRound == 2) {
                          if (opacity4 == 1) {
                            setState(() {
                              opacity4 = 0.5;
                            });
                          } else {
                            setState(() {
                              opacity4 = 1;
                            });
                          }
                        }
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
                        if (whichRound == 2) {
                          if (opacity5 == 1) {
                            setState(() {
                              opacity5 = 0.5;
                            });
                          } else {
                            setState(() {
                              opacity5 = 1;
                            });
                          }
                        }
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
                        switch (whichRound) {
                          case 1: //first round
                            rollDice();
                            setState(() {
                              whichRound++;
                              opacity1 = 0.5;
                              opacity2 = 0.5;
                              opacity3 = 0.5;
                              opacity4 = 0.5;
                              opacity5 = 0.5;
                              rankingList.clear();
                              rankingList.addAll([
                                diceNumber1,
                                diceNumber2,
                                diceNumber3,
                                diceNumber4,
                                diceNumber5
                              ]);
                              rankingList.sort();
                            });
                            break;
                          case 2: //second round
                            rollDice();
                            setState(() {
                              whichRound++;
                              opacity1 = 1;
                              opacity2 = 1;
                              opacity3 = 1;
                              opacity4 = 1;
                              opacity5 = 1;
                              rankingList.clear();
                              rankingList.addAll([
                                diceNumber1,
                                diceNumber2,
                                diceNumber3,
                                diceNumber4,
                                diceNumber5
                              ]);
                              rankingList.sort();
                            });
                            break;

                          case 3:
                            rollDice();
                            setState(() {
                              whichRound = 1;
                            });
                            break;
                        }
                      },
                      child: Text(rollNextButtonText(),
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: 'Lobster')),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
