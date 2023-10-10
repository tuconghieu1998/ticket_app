import 'package:flutter/material.dart';
import 'package:ticket_app/asset_const.dart';
import 'package:ticket_app/detail/screens/movie_detail_screen.dart';

class VerticalMovieWidget extends StatelessWidget {
  const VerticalMovieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return MovieDetailScreen();
        }));
      },
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
