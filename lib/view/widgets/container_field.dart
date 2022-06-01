import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

import 'package:ruedaz/config/theme/theme.dart';

class ContainerField extends StatelessWidget {
  ContainerField({Key? key, required this.label, required this.children})
      : super(key: key);
  String label;
  List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
          margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
          width: constraints.maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text(
                  label,
                  style: darkTheme.textTheme.subtitle1,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                    color: const Color(0xff3B4449),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: children,
                ),
              )
            ],
          ));
    });
  }
}
