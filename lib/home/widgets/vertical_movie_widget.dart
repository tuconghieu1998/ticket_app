import 'package:flutter/material.dart';
import 'package:ticket_app/asset_const.dart';

class VerticalMovieWidget extends StatelessWidget {
  const VerticalMovieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 103,
      height: 147,
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AppImages.imgVerticalMoviePoster),
            fit: BoxFit.contain,
          ),
          borderRadius: BorderRadius.circular(14)),
    );
  }
}
