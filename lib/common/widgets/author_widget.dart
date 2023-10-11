import 'package:flutter/material.dart';
import 'package:ticket_app/asset_const.dart';
import 'package:ticket_app/core/helpers/image_helper.dart';

class AuthorWidget extends StatelessWidget {
  const AuthorWidget({super.key, this.name, this.avatar});

  final String? name;
  final String? avatar;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageHelper.loadFromAsset(avatar ?? AppImages.imgProfile,
            width: 72,
            height: 72,
            fit: BoxFit.contain,
            radius: BorderRadius.circular(10)),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 72,
          height: 36,
          child: Center(
            child: Text(
              name ?? "",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
          ),
        )
      ],
    );
  }
}
