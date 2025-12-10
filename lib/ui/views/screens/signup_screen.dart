import 'package:flutter/material.dart';
import 'package:stepexpert/core/constant/auth_decoration.dart';
import 'package:stepexpert/core/constant/colors.dart';
import 'package:stepexpert/core/constant/string.dart';
import 'package:stepexpert/ui/views/custom_widgets/custom_buttons.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // ✅ Add this
      length: 2, // Login + Sign Up
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset("$staticAssets/signup.png", fit: BoxFit.cover),

            Positioned(
              top: 256,
              left: 19,
              right: 19,
              child: Container(
                height: 443,
                width: 353,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: const LinearGradient(
                          colors: [Color(0xffFE2B5F), Color(0xffD02E56)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Image.asset("$staticAssets/bicep.png", scale: 4),
                    ),
                    const SizedBox(height: 20),

                    Container(
                      padding: EdgeInsets.only(left: 80, right: 80),
                      child: TabBar(
                        labelColor: Color(0xffFE2B5F),
                        indicatorColor: Color(0xffFE2B5F),
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        tabs: [
                          Tab(text: "Login"),
                          Tab(text: "Signup"),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 46, right: 46),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: authdecoration.copyWith(
                                    hintText: "User name ",
                                  ),
                                ),
                                SizedBox(height: 10),
                                TextFormField(
                                  decoration: authdecoration.copyWith(
                                    hintText: "Email",
                                  ),
                                ),
                                SizedBox(height: 10),
                                TextFormField(
                                  decoration: authdecoration.copyWith(
                                    hintText: "Password",
                                  ),
                                ),
                                SizedBox(height: 30),
                                CustomButtons1(
                                  linearGradient: LinearGradient(
                                    colors: [primaryColor, Colors.blueAccent],
                                  ),
                                  child: Text(
                                    "SignUp",
                                    style: TextStyle(color: whiteColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
