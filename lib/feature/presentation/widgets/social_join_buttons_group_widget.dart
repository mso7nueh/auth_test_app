import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialJoinButtonGroup extends StatelessWidget {
  const SocialJoinButtonGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: const EdgeInsets.all(14.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Image.asset(width: 78, height: 32, 'assets/icons/yandex.png'),
        ),
        Container(
          padding: const EdgeInsets.all(14.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: SvgPicture.asset(
            'assets/icons/google.svg',
          ),
        ),
        Container(
          padding: const EdgeInsets.all(14.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Image.asset(width: 40, height: 32, 'assets/icons/vk.png'),
        ),
      ],
    );
  }
}
