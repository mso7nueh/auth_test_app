import 'package:auth_test_app/common/app_colors.dart';
import 'package:flutter/material.dart';

class OrJoinWith extends StatelessWidget {
  const OrJoinWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0, bottom: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              height: 1,
              decoration: const BoxDecoration(
                color: AppColors.textPColor,
              ),
            ),
          ),
          const Text(
            'Или войдите с помощью:',
            style: TextStyle(
              color: AppColors.textPColor,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              height: 1,
              decoration: const BoxDecoration(
                color: AppColors.textPColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
