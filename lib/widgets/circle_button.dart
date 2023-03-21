import 'package:flutter/material.dart';

import '../constant.dart';

class CircleButton extends StatelessWidget {
  CircleButton({required this.icon, required this.onPressed});
  final Icon icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints(
        maxHeight: 60,
        maxWidth: double.maxFinite,
      ),
      onPressed: onPressed,
      elevation: 0,
      fillColor: kGreyColor,
      child: icon,
      padding: const EdgeInsets.all(10.0),
      shape: const CircleBorder(),
    );
  }
}
