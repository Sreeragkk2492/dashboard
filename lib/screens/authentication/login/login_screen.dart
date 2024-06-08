import 'package:dashboard/core/constants/colors.dart';
import 'package:dashboard/core/widgets/login_desktop.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
          child: Column(
        children: [LoginDesktop()],
      )),
    );
  }
}

class FormData {
  String username = '';
  String password = '';
}
