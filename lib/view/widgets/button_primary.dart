import 'package:flutter/material.dart';
import 'package:ruedaz/config/theme/theme.dart';

class ButtonPrimary extends StatelessWidget {
  ButtonPrimary({Key? key, required this.function, required this.text})
      : super(key: key);

  Function function;
  String text;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ElevatedButton(
        onPressed: () => function(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            darkTheme.primaryColor,
          ),
        ),
        child: FittedBox(
          child: Text(
            text,
            style: darkTheme.textTheme.button?.copyWith(
                color: Colors.white,
                fontSize: constraints.maxWidth > 150 ? 20 : 10),
          ),
        ),
      ),
    );
  }
}
