import 'package:flutter/material.dart';
import 'package:impl/constraints.dart';

import '../../theme.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {super.key, this.text, this.press, this.color = kPrimaryColor});

  final String? text;
  final GestureTapCallback? press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.all(16),
      ),
      child: Center(
        child: Text(
          text ?? '',
          style: textTheme().titleMedium,
        ),
      ),
    );
  }
}
