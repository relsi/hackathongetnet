import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:play_cred/app/shared/utils/constants.dart';

import '../../shared/widgets/already_have_an_account_acheck.dart';
import '../../shared/widgets/rounded_button.dart';
import '../../shared/widgets/rounder_text_field.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // Positioned(
            //   top: 0,
            //   left: 0,
            //   child: Image.asset(
            //     "assets/images/login_top.png",
            //     width: size.width * 0.35,
            //   ),
            // ),
            // Positioned(
            //   bottom: 0,
            //   right: 0,
            //   child: Image.asset(
            //     "assets/images/login_bottom.png",
            //     width: size.width * 0.4,
            //   ),
            // ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: size.height * 0.03),
                  Image.asset(
                    "assets/images/logo.png",
                    width: 200,
                  ),
                  SizedBox(height: 40),
                  RoundedTextField(
                    icon: Icons.person,
                    iconColor: colorScheme.primary,
                    hintText: "Seu Email",
                    onChanged: (value) {},
                  ),
                  RoundedTextField(
                    icon: Icons.lock,
                    iconColor: colorScheme.primary,
                    suffixIcon: Icons.visibility,
                    hintText: "Senha",
                    obscureText: true,
                    onChanged: (value) {},
                  ),
                  RoundedButton(
                    text: "LOGIN",
                    color: colorScheme.primary,
                    press: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    press: () {
                      Modular.to.pushNamed('/signup');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
