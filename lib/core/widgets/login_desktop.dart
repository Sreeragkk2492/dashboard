import 'package:dashboard/core/constants/colors.dart';
import 'package:dashboard/core/constants/dimens.dart';
import 'package:dashboard/core/widgets/sized_box.dart';
import 'package:dashboard/screens/authentication/register/register.dart';
import 'package:dashboard/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class LoginDesktop extends StatelessWidget {
  const LoginDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/l3.jpg',
                  width: screenWidth / 2,
                  height: screenHeight / 1.2,
                  //  height: screenHeight/2,
                ),
              ],
            ),
            buildSizedboxW(100),
            Container(
              height: screenHeight / 2,
              padding: EdgeInsets.all(10.r),
              constraints: BoxConstraints(maxWidth: 550.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r)),
              child: FormBuilder(
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 29.sp,
                          fontWeight: FontWeight.w900,
                          color: AppColors.blackColor),
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.normal,
                          color: AppColors.blackColor),
                    ),
                    buildSizedBoxH(20),
                    Padding(
                      padding:
                           EdgeInsets.only(bottom: kDefaultPadding * 2.5),
                      child: FormBuilderTextField(
                        name: 'username',
                        decoration: const InputDecoration(
                          labelText: 'username',
                          hintText: 'username',
                          // helperText: '* Demo username: admin',
                          border: const OutlineInputBorder(),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                        enableSuggestions: false,
                        validator: FormBuilderValidators.required(),
                      ),
                    ),
                    Padding(
                      padding:
                           EdgeInsets.only(bottom: kDefaultPadding * 5.0), 
                      child: FormBuilderTextField(
                        name: 'password',
                        decoration: const InputDecoration(
                          labelText: 'password',
                          hintText: 'password',
                          // helperText: '* Demo password: admin',
                          border: const OutlineInputBorder(),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                        enableSuggestions: false,
                        obscureText: true,
                        validator: FormBuilderValidators.required(),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                          bottom: kDefaultPadding, left: 110.w),
                      child: SizedBox(
                        height: 40.h,
                        width: 350.w,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.blue)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DashboardScreen()));
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(color: AppColors.whiteColor),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 110.w),
                      child: SizedBox(
                        height: 40.h,
                        width: 350.w,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Dont have an account?',
                                style: TextStyle(color: AppColors.blackColor),
                              ),
                              buildSizedboxW(kTextPadding),
                              const Text(
                                'Register now',
                                style: const TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
