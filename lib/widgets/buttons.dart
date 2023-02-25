import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String buttonVal;
  final Color buttonColor;
  const MyButtons(
      {super.key, required this.buttonVal, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        fixedSize: Size(MediaQuery.of(context).size.width / 4 - 10,
            MediaQuery.of(context).size.width / 4 - 20),
        shape: const CircleBorder(),
      ),
      child: const Icon(FluentIcons.equal_off_16_regular, size: 50),
    );
  }
}
