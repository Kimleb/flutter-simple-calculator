import 'package:flutter/cupertino.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    this.color,
    this.textColor,
    required this.buttonText,
  });

  final color;
  final textColor;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Center(child: Text(buttonText, style: TextStyle(color: color))),
      ),
    );
  }
}
