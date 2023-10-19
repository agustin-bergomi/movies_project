import 'package:flutter/material.dart';
import 'constants.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppConstants.backDropImagePath,
      width: AppConstants.appBackgroundwidth,
      height: AppConstants.appBackgroundheight,
    );
  }
}
