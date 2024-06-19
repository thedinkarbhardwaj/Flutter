import 'package:alerter/alerter.dart';
import 'package:e_commerce/Constants/app_style.dart';
import 'package:e_commerce/Constants/common_button.dart';
import 'package:e_commerce/Constants/common_toast.dart';
import 'package:e_commerce/api_services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Constants/loading_indicator.dart';
import '../SharedPref/Sharedpref.dart';
import '../screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  FocusNode userfocus = FocusNode();
  FocusNode passfocus = FocusNode();

  ValueNotifier obsecurePassword = ValueNotifier(true);
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: fo28,
                  fontWeight: fontBold,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: usernameController,
                focusNode: userfocus,
                maxLength: 10,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: "UserName",
                    hintText: "Enter username",
                    counterText: '',
                    enabledBorder: enabledBorderr,
                    focusedBorder: focusBorderr,
                    errorBorder: errorBorderr),
                onFieldSubmitted: (v) {
                  FocusScope.of(context).requestFocus(passfocus);
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter username';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ValueListenableBuilder(
                  valueListenable: obsecurePassword,
                  builder: (context, value, child) {
                    return TextFormField(
                      controller: passController,
                      focusNode: passfocus,
                      maxLength: 10,
                      keyboardType: TextInputType.text,
                      obscureText: obsecurePassword.value,
                      decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter password",
                          enabledBorder: enabledBorderr,
                          focusedBorder: focusBorderr,
                          errorBorder: errorBorderr,
                          suffixIcon: GestureDetector(
                            child: obsecurePassword.value == true
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                            onTap: () {
                              obsecurePassword.value = !obsecurePassword.value;
                            },
                          )),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 5) {
                          return value!.isEmpty
                              ? 'Please enter password'
                              : "Please enter atleast 6 digit";
                        }
                        return null;
                      },
                    );
                  }),
              const SizedBox(height: 20),
              CommonButton(
                  child: isLoading
                      ? loadinIndicator(Colors.white)
                      : const Text("Login"),
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      //  print("Valid");
                      //showAlerter();

                      setState(() {
                        isLoading = true;
                      });
                      ApiServices()
                          .userLogin(usernameController.text.toString(),
                              passController.text.toString())
                          .then((response) {
                        debugPrint(response.toString());

                        Sharedpref().setUserToken(response['token'].toString());
                        Get.offAll(const HomeScreen());

                        setState(() {
                          isLoading = false;
                        });
                      })
                          .onError((error, stackTrace) {
                        debugPrint(error.toString());

                        commonToast(error.toString());
                        setState(() {
                          isLoading = false;
                        });
                      });
                    }
                    ;
                  })
            ],
          ),
        ),
      ),
    );
  }

  void showAlerter() {
    Alerter.show(
      context,
      title: 'Login successfully',
      message: 'Welcome to our app',
      backgroundColor: Colors.green,
      icon: Icons.check_circle,
      position: OverlayPosition.top,
    );
  }
}
