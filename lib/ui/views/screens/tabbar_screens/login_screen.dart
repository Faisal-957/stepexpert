import 'package:flutter/material.dart';
import 'package:stepexpert/core/constant/auth_decoration.dart';
import 'package:stepexpert/core/constant/colors.dart';
import 'package:stepexpert/core/constant/text_style.dart';
import 'package:stepexpert/ui/views/custom_widgets/custom_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                decoration: authdecoration.copyWith(hintText: "User name "),
              ),
              SizedBox(height: 10),

              TextFormField(
                obscureText: true,
                decoration: authdecoration.copyWith(hintText: "Password"),
              ),
              SizedBox(height: 5),
              Text(
                "forgot password?",
                style: style12.copyWith(color: Colors.red),
                textAlign: TextAlign.end,
              ),
              SizedBox(height: 10),
              CustomButtons1(
                onTap: () {},
                linearGradient: LinearGradient(
                  colors: [darkpink, primaryColor],
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Already have an account? Signup",
                  style: style16.copyWith(color: Color(0xff909090)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
