import 'package:auth_test_app/common/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldOmegaStyle extends StatelessWidget {
  final TextInputType textInputType;
  final String labelText;
  final TextEditingController controller;

  const TextFieldOmegaStyle(
      {super.key,
      required this.textInputType,
      required this.labelText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText:
          textInputType == TextInputType.visiblePassword ? true : false,
      cursorColor: AppColors.textPColor,
      style: const TextStyle(
        color: AppColors.textPColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      keyboardType: textInputType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
        labelText: labelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          gapPadding: 10.0,
          borderSide: const BorderSide(
            width: 2,
            color: AppColors.violetLightColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 10.0,
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            width: 2,
            color: AppColors.violetHardColor,
          ),
        ),
        border: OutlineInputBorder(
          gapPadding: 10.0,
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            width: 2,
            color: AppColors.violetHardColor,
          ),
        ),
        labelStyle: const TextStyle(
          color: AppColors.violetHardColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        floatingLabelStyle: const TextStyle(
          color: AppColors.violetHardColor,
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
