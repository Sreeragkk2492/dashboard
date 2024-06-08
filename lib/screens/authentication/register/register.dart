import 'package:dashboard/core/constants/colors.dart';
import 'package:dashboard/core/constants/dimens.dart';
import 'package:dashboard/core/widgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();
    final _formData = FormData();
    return Scaffold(
      backgroundColor: AppColors.blackColor, 
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding),
            constraints: BoxConstraints(maxWidth: 400),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.whiteColor),
                ),
                buildSizedBoxH(20),
                FormBuilder(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: kDefaultPadding * 1.5),
                        child: FormBuilderTextField(
                          name: 'username',
                          decoration: InputDecoration(
                            labelText: 'username',
                            hintText: 'username',
                          //  helperText: '* To test registration fail: admin',
                            border: const OutlineInputBorder(),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                          enableSuggestions: false,
                          validator: FormBuilderValidators.required(),
                          onSaved: (value) =>
                              (_formData.username = value ?? ''),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: kDefaultPadding * 1.5),
                        child: FormBuilderTextField(
                          name: 'email',
                          decoration: InputDecoration(
                            labelText: 'email',
                            hintText: 'email',
                            border: const OutlineInputBorder(),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: FormBuilderValidators.required(),
                          onSaved: (value) => (_formData.email = value ?? ''),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                            bottom: kDefaultPadding * 1.5),
                        child: FormBuilderTextField(
                          name: 'password',
                          decoration: InputDecoration(
                            labelText: 'password',
                            hintText: 'password',
                            // helperText: lang.passwordHelperText,
                            border: const OutlineInputBorder(),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                          enableSuggestions: false,
                          obscureText: true,
                          // controller: _passwordTextEditingController,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                            FormBuilderValidators.minLength(6),
                            FormBuilderValidators.maxLength(18),
                          ]),
                          onSaved: (value) =>
                              (_formData.password = value ?? ''),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                            bottom: kDefaultPadding * 2.0),
                        child: FormBuilderTextField(
                          name: 'retypePassword',
                          decoration: InputDecoration(
                            labelText: 'retypepasswod',
                            hintText: 'retypepassword',
                            border: const OutlineInputBorder(),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                          enableSuggestions: false,
                          obscureText: true,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                            (value) {
                              if (_formKey.currentState?.fields['password']
                                      ?.value !=
                                  value) {
                                return 'passwordDontMatch';
                              }

                              return null;
                            },
                          ]),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom: kDefaultPadding),
                        child: SizedBox(
                          height: 40.0,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                    AppColors.primaryColor)),
                            onPressed: () {},
                            // onPressed: (_isFormLoading
                            //     ? null
                            //     : () => _doRegisterAsync(
                            //           onSuccess: (message) =>
                            //               _onRegisterSuccess(
                            //                   context, message),
                            //           onError: (message) =>
                            //               _onRegisterError(
                            //                   context, message),
                            //         )),
                            child: Text(
                              'Register',
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Back to login',
                            style: TextStyle(color: AppColors.primaryColor),
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
    );
  }
}

class FormData {
  String username = '';
  String email = '';
  String password = '';
  String firstname = '';
  String lastname = '';
  String address = '';
  String city = '';
  String country = '';
  String postalCode = '';
}
