import 'package:flutter/material.dart';
import 'package:ticket_app/asset_const.dart';
import 'package:ticket_app/common/models/movie_model.dart';
import 'package:ticket_app/core/helpers/image_helper.dart';
import 'package:ticket_app/detail/screens/movie_detail_screen.dart';
import 'package:ticket_app/repository/network.dart';

class VerticalMovieWidget extends StatelessWidget {
  const VerticalMovieWidget({super.key, this.movieModel});

  final MovieModel? movieModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        var movieDetail = await getMovieDetail(movieModel!.id ?? 0);

        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return MovieDetailScreen(detail: movieDetail);
        }));
      },
      child: ImageHelper.loadFromUrl(
          ImageHelper.getImgUrl(movieModel?.posterPath ?? "", imgSize: "w300"),
          fit: BoxFit.cover,
          width: 103,
          height: 147,
          radius: BorderRadius.circular(8)),
    );
  }
}
