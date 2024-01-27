import 'package:flutter/material.dart';
class CustomTextFormField extends StatelessWidget {
final TextEditingController controller;
final String hinttext;
final TextInputType keyboardtype;

  const CustomTextFormField({super.key,

  required this.controller,
    required this.hinttext,
    required this.keyboardtype,




  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(


controller: controller,

keyboardType: keyboardtype,



        decoration: InputDecoration(
          hintText: hinttext,
            fillColor: Colors.white,


            enabledBorder: OutlineInputBorder(

                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(width: 2,color: Colors.black)
            ),
            focusedBorder: OutlineInputBorder(

                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(width: 2,color: Colors.black)
            )

        ),





      ),
    );
  }
}
