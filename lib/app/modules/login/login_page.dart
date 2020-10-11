import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/widgets/already_have_an_account_acheck.dart';
import '../../shared/widgets/rounded_button.dart';
import '../../shared/widgets/rounded_input_field.dart';
import '../../shared/widgets/rounded_password_field.dart';
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
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              // Todo: Alterar o placeholder para Image.asset com width: size.width * 0.35,
              child: Placeholder(
                color: Colors.red,
                fallbackWidth: size.height * 0.35,
              ),
            ),
            // Todo: Alterar o placeholder para Image.asset com width: size.width * 0.4,
            Positioned(
              bottom: 0,
              right: 0,
              child: Placeholder(
                color: Colors.green,
                fallbackWidth: size.width * 0.4,
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "LOGIN",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.03),
                  // Todo: Alterar o placeholder para SvgPicture.asset com height: size.height * 0.35,
                  Placeholder(
                    color: Colors.yellow,
                    fallbackHeight: size.height * 0.35,
                  ),
                  SizedBox(height: size.height * 0.03),
                  RoundedInputField(
                    hintText: "Your Email",
                    onChanged: (value) {},
                  ),
                  RoundedPasswordField(
                    onChanged: (value) {},
                  ),
                  RoundedButton(
                    text: "LOGIN",
                    press: () {
                      Modular.to.pushNamed('/home');
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
