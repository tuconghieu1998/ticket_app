import 'package:flutter/material.dart';
import 'package:ticket_app/app_color.dart';

class CategoryTagWidget extends StatelessWidget {
  const CategoryTagWidget({super.key, this.name, this.isActive, this.onPress});

  final bool? isActive;
  final Function()? onPress;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isActive != true ? AppColor.backgroundColor2 : null,
            gradient: isActive == true ? AppColor.secondGradient : null),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 9),
          child: Text(
            name ?? "",
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
