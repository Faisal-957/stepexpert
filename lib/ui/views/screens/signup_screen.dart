import 'package:flutter/material.dart';
import 'package:stepexpert/core/constant/colors.dart';
import 'package:stepexpert/core/constant/string.dart';

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

                    // ✅ TabBar
                    const TabBar(
                      indicatorWeight: 2,
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                          width: 5.0,
                          color: Colors.red,
                        ), // thickness
                        insets: EdgeInsets.symmetric(
                          horizontal: -1,
                        ), // start & end padding
                      ),

                      labelColor: primaryColor, // or primaryColor
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: primaryColor,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      tabs: [
                        Tab(text: "Login"),
                        Tab(text: "Sign Up"),
                      ],
                    ),

                    // ✅ TabBarView to show content
                    Expanded(
                      child: TabBarView(
                        children: [
                          Center(child: Text("Login Form Here")),
                          Center(child: Text("Sign Up Form Here")),
                        ],
                      ),
                    ),
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
