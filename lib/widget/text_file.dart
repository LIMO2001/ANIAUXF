import 'package:flutter/material.dart';

class TextFile extends StatelessWidget {
  const TextFile({super.key, required TextEditingController controller, required bool obscureText, required bool enableSuggestions, required bool autocorrect, required InputDecoration decoration, required TextInputType keyboardType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20,vertical: 50),
      child: TextField(
          decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: const Color.fromARGB(255, 231, 228, 228),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:const BorderSide(width: 2,color:Colors.blue),
          borderRadius: BorderRadius.circular(30)
        )
      )),
    );
  }
}
