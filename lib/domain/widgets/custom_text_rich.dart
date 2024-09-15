import 'package:flutter/material.dart';

class CustomTextrich extends StatelessWidget {
  const CustomTextrich({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(children: <TextSpan>[
        TextSpan(
          text:
              'The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with ',
          style: TextStyle(fontSize: 15, color: Color(0xff8F959E)),
        ),
        TextSpan(
          text: 'Read More..',
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
