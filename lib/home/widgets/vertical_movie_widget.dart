import 'package:flutter/material.dart';
import 'package:ticket_app/asset_const.dart';

class VerticalMovieWidget extends StatelessWidget {
  const VerticalMovieWidget({super.key, this.onPress});

  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 103,
        height: 147,
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(AppImages.imgVerticalMoviePoster),
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
