import 'package:fashione_commerce/features/home/presentation/components/custome_button.dart';
import 'package:fashione_commerce/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/components/custom_text_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Text(
                'Sign In',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 15),
              Text(
                'Hi! Welcome back, you\'ve been missed',
                style: TextStyle(color: Colors.black.withOpacity(0.3)),
              ),
              const SizedBox(height: 40),
              const CustomTextField(lable: "Email", hint: 'example@gmail.com'),
              const SizedBox(height: 20),
              const CustomTextField(lable: "Password", hint: 'password'),
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextButton(
                      child: const Text(
                        "Forget password?",
                        style: TextStyle(color: Colors.brown),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(btnText: 'Sign In', onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomePage();
                }));
              }),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SignIn();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(color: Colors.brown),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
