//import 'dart:html';

import 'package:appable/src/common_widgets/custom_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formSignUpKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: Column(
      children: [
        const Expanded(
          flex: 1,
          child: SizedBox(
            height: 10.0,
          ),
        ),
        Expanded(
          flex: 7,
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 20,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Form(
                key: _formSignUpKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "GET ON BOARD",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon:const Icon(Icons.person_3_outlined),
                          hintText: "Full Name",
                          hintStyle: const TextStyle(color: Colors.black),
                          label: const Text("Full Name"),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          )),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon:const Icon(Icons.mail_outline),
                          label: const Text("Email"),
                          hintStyle: const TextStyle(color: Colors.black),
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12))),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.fingerprint_outlined),
                          suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                          label: const Text("Password"),
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Colors.black12),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.black12,
                              )),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          )),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.fingerprint_outlined),
                          suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                          label: const Text('Confirm Password'),
                          hintText: "Confirm Password",
                          hintStyle: const TextStyle(color: Colors.black12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.black12),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          )),
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Sign Up"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        const Text("Already have an Account?"),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign-in",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
