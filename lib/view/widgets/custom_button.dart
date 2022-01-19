import 'package:art_mart/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import '../../constance.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColor;
  final String text;
  const CustomButton({
    Key? key,
    this.buttonColor = myPrimaryColor,
    this.text='',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),

      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomText(
            text: text,
            fontSize: 22,
            color: Colors.white,
            ),
      ),
    );
  }
}
