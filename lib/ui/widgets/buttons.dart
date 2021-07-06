import 'package:flutter/material.dart';
import 'package:calculator_app/ui/constants/contextExtension.dart';

class CalculatorButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  const CalculatorButton(
      {Key key, this.color, this.textColor, this.buttonText, this.buttonTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: context.paddingAllow,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: color,
              child: Center(
                child: Text(
                  buttonText,
                  style: TextStyle(color: textColor, fontSize: 30),
                ),
              ),
            )),
      ),
    );
  }
}
