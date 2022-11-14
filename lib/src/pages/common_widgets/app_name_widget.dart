import 'package:flutter/material.dart';
import 'package:quitanda_app/src/config/custom_colors.dart';

class AppNameWidget extends StatelessWidget {
  final Color? greenTileColor;
  final double textSize;

  const AppNameWidget({
    Key? key,
    this.greenTileColor,
    this.textSize = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(
          fontSize: textSize,
        ),
        children: [
          TextSpan(
            text: 'Quitanda',
            style: TextStyle(
              color: greenTileColor ?? CustomColors.customSwatchColor,
            ),
          ),
          TextSpan(
            text: 'App',
            style: TextStyle(
              color: CustomColors.customContrastColor,
            ),
          ),
        ],
      ),
    );
  }
}
