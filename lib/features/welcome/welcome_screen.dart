import 'package:fashione_commerce/features/auth/presentation/pages/sign_in.dart';
import 'package:flutter/material.dart';

import '../home/presentation/components/custome_button.dart';
import '../home/presentation/pages/home_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
          gridBanner(context),
          const SizedBox(height: 20),
          SizedBox(
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                      text: "The",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: " Fashion App ",
                      style: TextStyle(color: Colors.brown),
                    ),
                    TextSpan(
                      text: "That",
                      style: TextStyle(color: Colors.black),
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            child: Text("Makes You Looks Your Best",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.w600)),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.9,
            child: const Text(
              "The company is considering expanding its operations into new markets to increase its global presence.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
            btnText: 'Let\'s Get started',
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account?"),
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
                  "Sign in",
                  style: TextStyle(color: Colors.brown),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  SizedBox gridBanner(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.45,
            height: MediaQuery.sizeOf(context).height * 0.50,
            
            decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://thumbs.dreamstime.com/b/fashion-pretty-cool-youngwith-shopping-bags-wearing-black-hat-white-pants-over-colorful-orange-background-79063329.jpg"),
              fit: BoxFit.cover),
              color: Colors.grey,
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(100), right: Radius.circular(100)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.45,
                height: MediaQuery.sizeOf(context).height * 0.27,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?cs=srgb&dl=pexels-jmendezrf-1536619.jpg&fm=jpg"),
              fit: BoxFit.cover),
                  color: Colors.grey,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(100), right: Radius.circular(100)),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.45,
                height: MediaQuery.sizeOf(context).height * 0.22,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1483985988355-763728e1935b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZmFzaGlvbnxlbnwwfHwwfHx8MA%3D%3D"),
              fit: BoxFit.cover),
                  color: Colors.grey,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(100), right: Radius.circular(100)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
