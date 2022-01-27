import 'package:art_mart/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final Color hintColor;
  final String customTextVal;
  final bool obscureText;
  final TextInputType mykeypord;
  final Function(String?) onChangeMethod;
  final Function(String?) onSavedMethod;
  final String Function(String?) validateMethod;
  CustomTextFormField({
    Key? key, 
    this.hintText='',
    this.hintColor=Colors.grey,
    this.customTextVal='',
    this.obscureText=false,
    this.mykeypord=TextInputType.number,
    required this.onChangeMethod,
    required this.onSavedMethod,
    required this.validateMethod,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textFormField = TextFormField(
          onChanged: onChangeMethod,
          onSaved: onSavedMethod,
          validator: validateMethod,
          keyboardType: mykeypord,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: hintColor,
            )
          ),
          obscureText: obscureText,
        );
    return Column(
      children: [
        CustomText(text: customTextVal,fontSize: 12,),
        textFormField,
      ],
    );
  }
}
