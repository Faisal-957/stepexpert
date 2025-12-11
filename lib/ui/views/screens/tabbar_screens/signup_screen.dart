import 'package:flutter/material.dart';
import 'package:stepexpert/core/constant/auth_decoration.dart';
import 'package:stepexpert/core/constant/colors.dart';
import 'package:stepexpert/core/constant/text_style.dart';
import 'package:stepexpert/ui/views/custom_widgets/custom_buttons.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                decoration: authdecoration.copyWith(hintText: "User name "),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: authdecoration.copyWith(hintText: "Email"),
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: authdecoration.copyWith(hintText: "Password"),
              ),
              SizedBox(height: 20),
              CustomButtons1(
                onTap: () {},
                linearGradient: LinearGradient(
                  colors: [darkpink, primaryColor],
                ),
                child: Text(
                  "SignUp",
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Already have an account? Login",
                style: style16.copyWith(color: Color(0xff909090)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
