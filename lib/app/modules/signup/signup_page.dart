import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:play_cred/app/shared/widgets/already_have_an_account_acheck.dart';
import 'package:play_cred/app/shared/widgets/rounded_button.dart';
import 'package:play_cred/app/shared/widgets/rounder_text_field.dart';

import 'signup_controller.dart';

class SignupPage extends StatefulWidget {
  final String title;
  const SignupPage({Key key, this.title = "Signup"}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends ModularState<SignupPage, SignupController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
        body: Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text(
                //   "SIGNUP",
                //   style: TextStyle(fontWeight: FontWeight.bold),
                // ),
                SizedBox(height: size.height * 0.03),
                SvgPicture.asset(
                  "assets/icons/signup.svg",
                  width: size.width * 0.55,
                ),
                SizedBox(height: size.height * 0.03),
                RoundedTextField(
                  icon: Icons.person,
                  iconColor: colorScheme.primary,
                  hintText: "Seu Email",
                  onChanged: (value) {},
                ),
                RoundedTextField(
                  icon: Icons.lock,
                  suffixIcon: Icons.visibility,
                  iconColor: colorScheme.primary,
                  hintText: "Senha",
                  obscureText: true,
                  onChanged: (value) {},
                ),
                RoundedButton(
                  text: "CADASTRE-SE",
                  color: colorScheme.primary,
                  press: () {},
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    Modular.to.pop();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
