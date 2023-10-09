import 'package:flutter/material.dart';
import 'package:ticket_app/app_color.dart';

class MainButton extends StatelessWidget {
  const MainButton(
      {super.key, this.textButton, this.onPress, this.width, this.height});

  final String? textButton;
  final Function()? onPress;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width ?? 150,
        height: height ?? 44,
        decoration: BoxDecoration(
            gradient: AppColor.mainGradient,
            borderRadius: BorderRadius.circular(14)),
        child: Center(
          child: Text(
            textButton ?? "",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
