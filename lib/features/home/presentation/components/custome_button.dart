import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final Function onPressed;
  CustomButton({
    required this.btnText,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            // minimumSize: (),
            backgroundColor: Colors.brown,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )),
        onPressed:()=>onPressed(),
        child: SizedBox(
          height: 60,
          child: Center(
            child: Text(
              btnText,
              style:const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
