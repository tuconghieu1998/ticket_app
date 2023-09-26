import 'package:flutter/material.dart';

class MovieTrailerVideoWidget extends StatelessWidget {
  const MovieTrailerVideoWidget({super.key, required this.imgBackground});

  final String imgBackground;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 247,
      height: 144,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgBackground),
            fit: BoxFit.contain,
          ),
          borderRadius: BorderRadius.circular(14)),
    );
  }
}
