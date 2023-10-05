import 'package:flutter/material.dart';

class InputButton extends StatelessWidget {
  const InputButton({
    super.key,
    this.icon,
  });
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: icon,
    );
  }
}
