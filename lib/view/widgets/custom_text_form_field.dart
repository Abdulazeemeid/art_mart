import 'package:art_mart/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final Color hintColor;
  final String customTextVal;
  final bool obscureText;
  CustomTextFormField({
    this.hintText='',
    this.hintColor=Colors.grey,
    this.customTextVal='',
    this.obscureText=false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(text: customTextVal,fontSize: 12,),
        TextFormField(
          onChanged: (val){},
          onSaved: (val){},
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: hintColor,
            )
          ),
          obscureText: obscureText,
        ),
      ],
    );
  }
}
