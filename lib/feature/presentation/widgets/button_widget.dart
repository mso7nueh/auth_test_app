import 'package:auth_test_app/common/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonOmegaStyle extends StatelessWidget {
  const ButtonOmegaStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return AppColors.mainButtonColor;
          } else if (states.contains(MaterialState.hovered)) {
            return AppColors.hoverButtonColor;
          }
          return AppColors.mainButtonColor;
        }),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: const Padding(
        padding: EdgeInsets.all(13.0),
        child: Text(
          'Войти',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
