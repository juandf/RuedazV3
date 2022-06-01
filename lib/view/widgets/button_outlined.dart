import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruedaz/config/theme/theme.dart';

class ButtonOutlined extends StatelessWidget {
  ButtonOutlined({Key? key, required this.function, required this.text})
      : super(key: key);
  Function function;
  String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => function(),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: BorderSide(
                width: 2,
                color: darkTheme.primaryColor,
                style: BorderStyle.solid))),
      ),
      child: FittedBox(
        child: Text(
          text,
          style: darkTheme.textTheme.button
              ?.copyWith(color: darkTheme.primaryColorLight, fontSize: 20),
        ),
      ),
    );
  }
}
