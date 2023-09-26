import 'package:flutter/material.dart';
import 'package:ticket_app/asset_const.dart';

class AuthorWidget extends StatelessWidget {
  const AuthorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(AppImages.imgProfile),
                fit: BoxFit.contain,
              ),
              borderRadius: BorderRadius.circular(10)),
        ),
        const SizedBox(
          height: 5,
        ),
        const SizedBox(
          width: 72,
          height: 36,
          child: Center(
            child: Text(
              "John C. Reilly",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
          ),
        )
      ],
    );
  }
}
