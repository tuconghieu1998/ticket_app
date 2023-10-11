import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ticket_app/asset_const.dart';
import 'package:ticket_app/common/models/movie_model.dart';
import 'package:ticket_app/core/helpers/image_helper.dart';
import 'package:ticket_app/detail/screens/movie_detail_screen.dart';
import 'package:ticket_app/repository/network.dart';

class PlayingNowMovieItemWidget extends StatelessWidget {
  const PlayingNowMovieItemWidget({super.key, this.model});

  final MovieModel? model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (model?.id != null) {
          var movieDetail = await getMovieDetail(model!.id ?? 0);
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return MovieDetailScreen(detail: movieDetail);
          }));
        }
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            child: ImageHelper.loadFromUrl(
                ImageHelper.getImgUrl(model?.backdropPath ?? ""),
                fit: BoxFit.cover,
                width: 350,
                height: 220),
          ),
          Positioned(
            bottom: -1,
            child: Container(
              height: 80,
              width: 350,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color(0xff111D42),
                        Color(0xff111D42).withOpacity(0)
                      ]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14))),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 80,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text(
                          model?.title ?? "",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            ignoreGestures: true,
                            itemSize: 18,
                            initialRating: (model?.voteAverage ?? 0) / 2,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Text(
                            "(${(model?.voteAverage ?? 0) / 2})",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      )
                    ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
