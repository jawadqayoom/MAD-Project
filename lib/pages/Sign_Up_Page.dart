import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0c0f14),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Center(child: Text("My Coffee"))],
      ),
    );
  }
}
