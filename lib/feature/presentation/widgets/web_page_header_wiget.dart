import 'package:auth_test_app/common/app_colors.dart';
import 'package:auth_test_app/feature/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderForWebPageWidget extends StatelessWidget {
  const HeaderForWebPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 140.0, top: 10.0, left: 140.0, bottom: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _topHeaderText('Для вас'),
                _topHeaderText('Для бизнеса'),
                _topHeaderText('Для разработчиков'),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                  width: 100, height: 50, 'https://i.imgur.com/62e4KPT.png'),
              _inHeaderText('Игры', true),
              _inHeaderText('Приложения'),
              _inHeaderText('Сообщество'),
              _inHeaderText('Турнир'),
              _inHeaderText('Справка'),
              const Spacer(),
              SizedBox(
                width: 318.0,
                height: 40.0,
                child: TextFieldOmegaStyle(
                  textInputType: TextInputType.none,
                  labelText: 'Поиск',
                  controller: TextEditingController(),
                  icon: 'assets/icons/search.svg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SvgPicture.asset('assets/icons/cart.svg'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SvgPicture.asset('assets/icons/favorite.svg'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SvgPicture.asset('assets/icons/join_button.svg'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _topHeaderText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          color: AppColors.linkTextColor,
          fontSize: 13,
        ),
      ),
    );
  }

  Widget _inHeaderText(String text, [bool? isSelected]) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.transparent,
          decorationColor: AppColors.mainButtonColor,
          decorationThickness: 2.0,
          shadows: [Shadow(color: AppColors.textHColor, offset: Offset(0, isSelected != null ? -5 : -3))],
          decoration: isSelected != null ? TextDecoration.underline : null,
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
      ),
    );
  }
}

