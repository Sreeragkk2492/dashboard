import 'package:dashboard/core/constants/colors.dart';
import 'package:dashboard/core/constants/dimens.dart';
import 'package:dashboard/core/widgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class DesktopProfile extends StatelessWidget {
  const DesktopProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Flexible(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Expanded (
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Container(
                height: 600.h,
                width: 350.w,
                decoration: BoxDecoration(
                    color: AppColors.greycolor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 20),
                      child: Text(
                        'Edit profile',
                        style:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      height: 40,
                    ),
                    buildSizedBoxH(30),
                    Padding(
                      padding: const EdgeInsets.only(left: 20), 
                      child: Text('User information',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                    ), 
                    FormBuilder(
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildSizedBoxH(20),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 20, right: 20, bottom: 30),
                            child: FormBuilderTextField(
                              name: 'username',
                              decoration: const InputDecoration(
                                labelText: 'username',
                                hintText: 'username',
                                // helperText: '* Demo username: admin',
                                border: const OutlineInputBorder(),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                              ),
                              enableSuggestions: false,
                              validator: FormBuilderValidators.required(),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: 30, left: 20, right: 20),
                            child: FormBuilderTextField(
                              name: 'Email',
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                hintText: 'Email', 
                                // helperText: '* Demo password: admin',
                                border: const OutlineInputBorder(),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                              ),
                              enableSuggestions: false,
                              obscureText: true,
                              validator: FormBuilderValidators.required(),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: 30, left: 20, right: 20),
                            child: FormBuilderTextField(
                              name: 'First name',
                              decoration: const InputDecoration(
                                labelText: 'First name',
                                hintText: 'First name', 
                                // helperText: '* Demo password: admin',
                                border: const OutlineInputBorder(),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                              ),
                              enableSuggestions: false,
                              obscureText: true,
                              validator: FormBuilderValidators.required(),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: 30, left: 20, right: 20), 
                            child: FormBuilderTextField(
                              name: 'Last name',
                              decoration: const InputDecoration(
                                labelText: 'Last name',
                                hintText: 'Last name', 
                                // helperText: '* Demo password: admin',
                                border: const OutlineInputBorder(),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                              ),
                              enableSuggestions: false,
                              obscureText: true,
                              validator: FormBuilderValidators.required(),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 40, left: 180.w,),  
                            child: SizedBox(
                              height: 40.h,
                              width: 350.w,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                        AppColors.buttonSuccessColor)),
                                onPressed: () {
                                  //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DashboardScreen()));
                                },
                                child: const Text(
                                  'Edit',
                                  style: TextStyle(color: AppColors.whiteColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20,right: 20), 
            child: Container(
              height: 500.h,
              width: 350.w,
              decoration: BoxDecoration(
                  color: AppColors.greycolor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      radius: 100,
                      
                      backgroundImage: AssetImage('assets/profile3.jpg',) ,  
                      // child: Image.asset('assets/profile2.jpg',fit: BoxFit.cover,),
                    ),
                  ),
                  buildSizedBoxH(20),
                  Text(
                    'Sreerag kk',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '9037402492',
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80,left: 20,right: 20 ),
                    child: SizedBox(
                                height: 40.h,
                                width: 350.w,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(
                                          AppColors.buttonSuccessColor)),
                                  onPressed: () {
                                    //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DashboardScreen()));
                                  },
                                  child: const Text(
                                    'Sign out', 
                                    style: TextStyle(color: AppColors.whiteColor),
                                  ),
                                ),
                              ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
