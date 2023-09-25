
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String lable;
  final String hint;
  const CustomTextField({
    super.key,
    required this.lable,
    required this.hint,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(lable, style: const TextStyle(fontSize: 14),),
          const SizedBox(height: 5),
          TextField(
            decoration: InputDecoration(
              
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:const BorderSide(width: 5.0, color: Colors.red),
              ),
              hintText: hint,
              hintStyle: TextStyle(color:Colors.black.withOpacity(0.3), fontWeight: FontWeight.normal)
            ),
          ),
        ],
      ),
    );
  }
}
