import 'package:appable/src/common_widgets/custom_scaffold.dart';
import 'package:appable/src/common_widgets/welcome_button.dart';
import 'package:appable/src/features/screens/login/login_screen.dart';
import 'package:appable/src/features/screens/signup/signup_screen.dart';
//import 'package:appable/src/constraints/image_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 6,
            child: Padding(
              padding:const EdgeInsets.all(10),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                      text: "Build Awesome Apps\n",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text:
                          "\nLet's put your creativity on the development highway, craft apps that everyone love",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ),
          const Flexible(
            flex: 2,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomeButton(
                      buttonText: "Login",
                      onTap: LoginPage(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: "Signup",
                      onTap: SignUpPage(),
                      color: Colors.white,
                      textColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
