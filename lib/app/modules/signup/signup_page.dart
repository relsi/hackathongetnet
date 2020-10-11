import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:play_cred/app/shared/widgets/already_have_an_account_acheck.dart';
import 'package:play_cred/app/shared/widgets/rounded_button.dart';
import 'package:play_cred/app/shared/widgets/rounded_input_field.dart';
import 'package:play_cred/app/shared/widgets/rounded_password_field.dart';

import 'signup_controller.dart';
import 'widgets/or_divider.dart';
import 'widgets/social_icon.dart';

class SignupPage extends StatefulWidget {
  final String title;
  const SignupPage({Key key, this.title = "Signup"}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends ModularState<SignupPage, SignupController> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            // Todo: Alterar o placeholder para Image.asset com height: size.height * 0.35,
            child: Placeholder(
              color: Colors.yellow,
              fallbackWidth: size.height * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            // Todo: Alterar o placeholder para Image.asset com height: size.height * 0.25,
            child: Placeholder(
              color: Colors.red,
              fallbackWidth: size.height * 0.25,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "SIGNUP",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.03),
                // Todo: Alterar o placeholder para SvgPicture.asset com height: size.height * 0.35,
                Placeholder(
                  color: Colors.green,
                  fallbackHeight: size.height * 0.35,
                ),

                RoundedInputField(
                  hintText: "Your Email",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                RoundedButton(
                  text: "SIGNUP",
                  press: () {},
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    Modular.to.pop();
                  },
                ),
                OrDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Todo: Alterar o placeholder para classe SocialIcon do facebook
                    Placeholder(
                      color: Colors.green,
                      fallbackHeight: 40.0,
                      fallbackWidth: 40.0,
                    ),
                    // Todo: Alterar o placeholder para classe SocialIcon do twitter
                    Placeholder(
                      color: Colors.purple,
                      fallbackHeight: 40.0,
                      fallbackWidth: 40.0,
                    ),
                    // Todo: Alterar o placeholder para classe SocialIcon do google-plus
                    Placeholder(
                      color: Colors.orange,
                      fallbackHeight: 40.0,
                      fallbackWidth: 40.0,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
