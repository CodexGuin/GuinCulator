import 'package:flutter/material.dart';
import 'package:guinculator/widgets/buttons.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1C19),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xFF28352C),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
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
                    children: const [
                      MyButtons(
                          buttonVal: "AC", buttonColor: Color(0xFF244C5B)),
                      MyButtons(buttonVal: "7", buttonColor: Color(0xFF244C5B)),
                      MyButtons(buttonVal: "4", buttonColor: Color(0xFF244C5B)),
                      MyButtons(buttonVal: "1", buttonColor: Color(0xFF244C5B)),
                      MyButtons(buttonVal: "0", buttonColor: Color(0xFF244C5B)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      MyButtons(
                          buttonVal: "( )", buttonColor: Color(0xFF344B3F)),
                      MyButtons(buttonVal: "8", buttonColor: Color(0xFF1F2521)),
                      MyButtons(buttonVal: "5", buttonColor: Color(0xFF1F2521)),
                      MyButtons(buttonVal: "2", buttonColor: Color(0xFF1F2521)),
                      MyButtons(buttonVal: ".", buttonColor: Color(0xFF1F2521)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      MyButtons(buttonVal: "%", buttonColor: Color(0xFF344B3F)),
                      MyButtons(buttonVal: "9", buttonColor: Color(0xFF1F2521)),
                      MyButtons(buttonVal: "6", buttonColor: Color(0xFF1F2521)),
                      MyButtons(buttonVal: "3", buttonColor: Color(0xFF1F2521)),
                      MyButtons(
                          buttonVal: "Back", buttonColor: Color(0xFF1F2521)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      MyButtons(buttonVal: "/", buttonColor: Color(0xFF344B3F)),
                      MyButtons(buttonVal: "X", buttonColor: Color(0xFF344B3F)),
                      MyButtons(buttonVal: "-", buttonColor: Color(0xFF344B3F)),
                      MyButtons(buttonVal: "+", buttonColor: Color(0xFF344B3F)),
                      MyButtons(buttonVal: "=", buttonColor: Color(0xFF005231)),
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
