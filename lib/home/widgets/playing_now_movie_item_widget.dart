import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ticket_app/asset_const.dart';
import 'package:ticket_app/detail/screens/movie_detail_screen.dart';

class PlayingNowMovieItemWidget extends StatelessWidget {
  const PlayingNowMovieItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return MovieDetailScreen();
        }));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(AppImages.imgMoviePoster),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(14)),
        child: Stack(children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: 80,
              width: 300,
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
              width: 300,
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
                          "Wreck It Ralph 2",
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
                            initialRating: 4.5,
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
                            "(4.7)",
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
