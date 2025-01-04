import 'package:badc_app/homePage.dart';
import 'package:badc_app/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'customTextField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? emailErrorMessage;
  String? passwordErrorMessage;
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _isPasswordVisible = true;

  // void _login() {
  //   if (_formKey.currentState!.validate()) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Login successful!')),
  //     );
  //   }
  // }

  void _login() {
    bool isValid = _formKey.currentState!.validate();

    if (isValid) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login successful!'),
        ),
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Homepage(),
        ),
      );
    }
  }

  void _validateEmail(String value) {
    if (value.isEmpty) {
      emailErrorMessage = "Please enter your email";
    } else if (!RegExp(r"^[^@]+@[^@]+\.[^@]+").hasMatch(value)) {
      emailErrorMessage = "Invalid email address";
    } else {
      emailErrorMessage = null;
    }
    setState(() {});
  }

  void _validatePassword(String value) {
    if (value.isEmpty) {
      passwordErrorMessage = "Please enter your password";
    } else if (value.length < 6) {
      passwordErrorMessage = "Password must be at least 6 characters";
    } else {
      passwordErrorMessage = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 90),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  fit: BoxFit.fill,
                  'assets/logo.png',
                  //color: colorLightGray,
                  height: 180,
                  width: 180,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "গণপ্রজাতন্ত্রী বাংলাদেশ সরকার",
                  style: Head1Text(colorDarkBlue),
                ),
                SizedBox(
                  height: 40,
                ),
                // CustomTextFormField(
                //   onChanged: (value) => _validateEmail(value),
                //   borderSideColor: Colors.grey,
                //   label: 'Email',
                //   hint: 'Email',
                //   prefixIcon: Icons.email,
                //   controller: emailController,
                //   inputType: TextInputType.emailAddress,
                //   validator: (_) => emailErrorMessage,
                // ),
                CustomTextFormField(
                  onChanged: (value) {
                    //_validateEmail(value);
                    emailErrorMessage = value;
                    _formKey.currentState?.validate();
                  },
                  borderRadiusCircular: 8,
                  borderSideColor: primaryGreen,
                  focusColor: primaryGreen,
                  label: 'ইমেইল',
                  hint: 'ইমেইল',
                  prefixIcon: Icons.email,
                  controller: emailController,
                  inputType: TextInputType.emailAddress,
                  validator: (_) {
                    _validateEmail(emailController.text);
                    return emailErrorMessage;
                  },
                ),

                // if (emailErrorMessage != null)
                //   Text(
                //     emailErrorMessage!,
                //     style: TextStyle(color: Colors.red),
                //   ),
                const SizedBox(height: 25),
                //
                CustomTextFormField(
                  focusColor: primaryGreen,
                  onChanged: (value) {
                    //_validatePassword(value);
                    passwordErrorMessage = value;
                    _formKey.currentState?.validate();
                  },
                  borderSideColor: primaryGreen,
                  label: 'পাসওয়ার্ড',
                  hint: 'পাসওয়ার্ড',
                  isPassword: true,
                  prefixIcon: Icons.lock,
                  controller: passwordController,
                  suffixIconButton: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                  borderRadiusCircular: 8,
                  isObsecureText: _isPasswordVisible,
                  validator: (_) {
                    _validatePassword(passwordController.text);
                    return passwordErrorMessage;
                  },
                ),

                // if (passwordErrorMessage != null)
                //   Text(
                //     passwordErrorMessage!,
                //     style: TextStyle(color: Colors.red),
                //   ),

                const SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 190),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "পাসওয়ার্ড ভুলে গেছেন?",
                      style: HeadText6(colorLightGray),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    _login();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Homepage(),
                      ),
                      (route) => false,
                    );
                  },
                  style: AppButtonStyle(),
                  child: SuccessButtonChild(
                    "লগইন",
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(color: primaryGreen),
                            //color: colorWhite,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img.png',
                                  height: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'গুগল দিয়ে সাইন ইন করুন',
                                  style: HeadText6(colorDarkBlue),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "অ্যাকাউন্ট নেই?",
                            style: HeadText6(colorDarkBlue),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              " নিবন্ধন করুন",
                              style: HeadText7(primaryGreen),
                            ),
                          ),
                        ],
                      )
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
