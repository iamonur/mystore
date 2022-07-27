import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mystore/components/custom_button.dart';
import 'package:mystore/components/custom_text_input.dart';
import 'package:mystore/utils/custom_theme.dart';
import 'package:mystore/utils/login_data.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _loadingButton = false;

  Map<String, String> data = {};

  _LoginScreenState() {
    data = LoginData.signIn;
  }

  void switchLogin() {
    setState(() {
      if (mapEquals(data, LoginData.signUp)) {
        data = LoginData.signIn;
      } else {
        data = LoginData.signUp;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                bottom: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      data["heading"] as String,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  Text(
                    data["subHeading"] as String,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            model(data, _emailController, _passwordController),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  child: TextButton(
                    onPressed: switchLogin,
                    child: Text(
                      data["footer"] as String,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void loginButtonPressed() {}

  model(Map<String, String> data, TextEditingController emailController,
      TextEditingController passwordController) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
          top: 30,
          bottom: 55,
        ),
        decoration: CustomTheme.getCardDecoration(),
        child: Column(
          children: [
            CustomTextInput(
              label: "e-mail",
              placeholder: "e@mail.com",
              icon: Icons.email_outlined,
              textEditingController: _emailController,
            ),
            CustomTextInput(
              label: "Password",
              placeholder: "password",
              icon: Icons.email_outlined,
              textEditingController: _passwordController,
              isPassword: true,
            ),
            CustomButton(
              text: data["label"] as String,
              onPress: loginButtonPressed,
              loading: _loadingButton,
            )
          ],
        ));
  }
}
