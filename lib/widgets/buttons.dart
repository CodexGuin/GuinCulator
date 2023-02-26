import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final Color buttonColor;
  final String buttonIconImage;
  final Function()? updateValue;

  const MyButtons({
    super.key,
    required this.buttonColor,
    required this.buttonIconImage,
    required this.updateValue,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: updateValue,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        fixedSize: Size(MediaQuery.of(context).size.width / 4 - 10,
            MediaQuery.of(context).size.width / 4 - 20),
        shape: const CircleBorder(),
      ),
      child: Image.asset(buttonIconImage),
    );
  }
}
