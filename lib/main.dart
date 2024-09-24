import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void diceeImage() {
    setState(
      () {
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 2, if you don't specify the flex expanded widget will assume the flex as 1 by default
            child: TextButton(
              onPressed: () {
                diceeImage();
              },
              child: Image.asset("images/dice$leftDiceNumber.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                diceeImage();
              },
              child: Image.asset("images/dice$rightDiceNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}














// class DicePage extends StatelessWidget { 
//   @override
//   Widget build(BuildContext context) {
//     var leftDiceNumber = 2;
//     return Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(
//             // flex: 2, if you don't specify the flex expanded widget will assume the flex as 1 by default
//             child: TextButton(
//                 onPressed: () {
//                   print('first button is pressed');
//                 },
//                 child: Image.asset("images/dice$leftDiceNumber.png")),
//           ),
//           Expanded(
//             child: TextButton(
//                 onPressed: () {
//                   print('the button on the right got pressed');
//                 },
//                 child: Image.asset("images/dice1.png")),
//           ),
//         ],
//       ),
//     );
//   }
// }
