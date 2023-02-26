import 'package:flutter/material.dart';
import 'package:guinculator/widgets/buttons.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  /* Variables */
  String answer = '';
  String values = '';

  /* Calculation */

  /* Getting unique button inputs */
  void updateValues(String btnData) {
    setState(() {
      switch (btnData) {
        case "AC":
          values = "";
          answer = "";
          break;
        case "Brackets":
          values = "Brackets";
          break;
        case "Percentage":
          values = "Percentage";
          break;
        case "Divide":
          values = "Divide";
          break;
        case "1":
          values = "1";
          break;
        case "2":
          values = "2";
          break;
        case "3":
          values = "3";
          break;
        case "4":
          values = "4";
          break;
        case "5":
          values = "5";
          break;
        case "6":
          values = "6";
          break;
        case "7":
          values = "7";
          break;
        case "8":
          values = "8";
          break;
        case "9":
          values = "9";
          break;
        case "0":
          values = "0";
          break;
        case "Times":
          values = "Times";
          break;
        case "Minus":
          values = "Minus";
          break;
        case "Plus":
          values = "Plus";
          break;
        case "Dot":
          values = ".";
          break;
        case "Back":
          values = "Back";
          break;
        case "Equal":
          values = "Equal";
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1C19),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xFF28352C),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    values,
                    style: const TextStyle(fontSize: 70, color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 50),
                  Text(
                    answer,
                    style: const TextStyle(fontSize: 70, color: Colors.white),
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top -
                  300,
              decoration: const BoxDecoration(
                color: Color(0xFF1A1C19),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButtons(
                          updateValue: () => updateValues("AC"),
                          buttonColor: const Color(0xFF244C5B),
                          buttonIconImage: 'lib/icon/AC.png'),
                      MyButtons(
                          updateValue: () => updateValues("7"),
                          buttonColor: const Color(0xFF244C5B),
                          buttonIconImage: 'lib/icon/7.png'),
                      MyButtons(
                          updateValue: () => updateValues("4"),
                          buttonColor: const Color(0xFF244C5B),
                          buttonIconImage: 'lib/icon/4.png'),
                      MyButtons(
                          updateValue: () => updateValues("1"),
                          buttonColor: const Color(0xFF244C5B),
                          buttonIconImage: 'lib/icon/1.png'),
                      MyButtons(
                          updateValue: () => updateValues("0"),
                          buttonColor: const Color(0xFF244C5B),
                          buttonIconImage: 'lib/icon/Zero.png'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButtons(
                          updateValue: () => updateValues("Brackets"),
                          buttonColor: const Color(0xFF344B3F),
                          buttonIconImage: 'lib/icon/Brackets.png'),
                      MyButtons(
                          updateValue: () => updateValues("8"),
                          buttonColor: const Color(0xFF1F2521),
                          buttonIconImage: 'lib/icon/8.png'),
                      MyButtons(
                          updateValue: () => updateValues("5"),
                          buttonColor: const Color(0xFF1F2521),
                          buttonIconImage: 'lib/icon/5.png'),
                      MyButtons(
                          updateValue: () => updateValues("2"),
                          buttonColor: const Color(0xFF1F2521),
                          buttonIconImage: 'lib/icon/2.png'),
                      MyButtons(
                          updateValue: () => updateValues("Dot"),
                          buttonColor: const Color(0xFF1F2521),
                          buttonIconImage: 'lib/icon/Dot.png'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButtons(
                          updateValue: () => updateValues("Percentage"),
                          buttonColor: const Color(0xFF344B3F),
                          buttonIconImage: 'lib/icon/Percentage.png'),
                      MyButtons(
                          updateValue: () => updateValues("9"),
                          buttonColor: const Color(0xFF1F2521),
                          buttonIconImage: 'lib/icon/9.png'),
                      MyButtons(
                          updateValue: () => updateValues("6"),
                          buttonColor: const Color(0xFF1F2521),
                          buttonIconImage: 'lib/icon/6.png'),
                      MyButtons(
                          updateValue: () => updateValues("3"),
                          buttonColor: const Color(0xFF1F2521),
                          buttonIconImage: 'lib/icon/3.png'),
                      MyButtons(
                          updateValue: () => updateValues("Back"),
                          buttonColor: const Color(0xFF1F2521),
                          buttonIconImage: 'lib/icon/Back.png'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButtons(
                          updateValue: () => updateValues("Divide"),
                          buttonColor: const Color(0xFF344B3F),
                          buttonIconImage: 'lib/icon/Divide.png'),
                      MyButtons(
                          updateValue: () => updateValues("Times"),
                          buttonColor: const Color(0xFF344B3F),
                          buttonIconImage: 'lib/icon/Times.png'),
                      MyButtons(
                          updateValue: () => updateValues("Minus"),
                          buttonColor: const Color(0xFF344B3F),
                          buttonIconImage: 'lib/icon/Minus.png'),
                      MyButtons(
                          updateValue: () => updateValues("Plus"),
                          buttonColor: const Color(0xFF344B3F),
                          buttonIconImage: 'lib/icon/Plus.png'),
                      MyButtons(
                          updateValue: () => updateValues("Equal"),
                          buttonColor: const Color(0xFF005231),
                          buttonIconImage: 'lib/icon/Equal.png'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
