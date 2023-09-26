import 'package:flutter/material.dart';
import 'package:ticket_app/asset_const.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key, this.size = 24});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(size / 2)),
      child: Image.asset(AppImages.imgProfile),
    );
  }
}
