import 'package:dashboard/core/view_models/responsive.dart';
import 'package:dashboard/core/widgets/mobile_login.dart';
import 'package:dashboard/core/widgets/tablest_login.dart';
import 'package:dashboard/screens/authentication/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1440, 900),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Responsive(
            mobile: MobileLogin(),
            tablet: TablestLogin(),
            desktop: LoginScreen()), 
      ),
    );
  }
}
