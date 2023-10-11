import 'package:flutter/material.dart';
import 'package:ticket_app/asset_const.dart';
import 'package:ticket_app/core/helpers/image_helper.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget(
      {super.key, this.size = 24, this.url, this.asset = AppImages.imgProfile});

  final double size;
  final String? url;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(size / 2)),
      child: url != null ? ImageHelper.loadFromUrl(url!) : Image.asset(asset),
    );
  }
}
