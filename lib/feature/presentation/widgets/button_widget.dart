import 'package:auth_test_app/common/app_colors.dart';
import 'package:auth_test_app/feature/presentation/bloc/login_bloc.dart';
import 'package:auth_test_app/feature/presentation/bloc/login_events.dart';
import 'package:auth_test_app/feature/presentation/bloc/login_states.dart';
import 'package:auth_test_app/feature/presentation/widgets/login_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonOmegaStyle extends StatelessWidget {
  const ButtonOmegaStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return TextButton(
          onPressed: state is! LoginStateLoading
              ? () {
                  BlocProvider.of<LoginBloc>(context, listen: false).add(
                      TryLoginEvent(
                          email: emailTextEditingController.text,
                          password: passwordTextEditingController.text));
                }
              : null,
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
              } else if (states.contains(MaterialState.disabled)) {
                return AppColors.bgCardColor;
              }
              return AppColors.mainButtonColor;
            }),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: state is! LoginStateLoading
              ? const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Text(
                    'Войти',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                )
              : const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: CupertinoActivityIndicator(),
                ),
        );
      },
    );
  }
}
