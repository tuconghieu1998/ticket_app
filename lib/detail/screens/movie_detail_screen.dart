import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ticket_app/asset_const.dart';

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({super.key});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [_headerSection()],
          )),
    );
  }

  Widget _headerSection() {
    return Container(
      width: double.infinity,
      height: 360,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 221,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(AppImages.imgMovieBanner),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8)),
          ),
          Container(
            width: double.infinity,
            height: 221,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xff04103A),
                      Color(0xff04103A).withOpacity(0)
                    ]),
                borderRadius: BorderRadius.circular(8)),
          ),
          Positioned(
            top: 181,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 120,
                    height: 172,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(AppImages.imgVerticalMoviePoster),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ralph Breaks the Internet",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            RatingBar.builder(
                              ignoreGestures: true,
                              itemSize: 16,
                              initialRating: 4.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 2.0),
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
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "Action & adventure, Comedy",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white.withOpacity(0.7)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "1h 41min",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white.withOpacity(0.7)),
                      ),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 50,
              left: 25,
              child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.black.withOpacity(0.4)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(AppIcons.iconBack),
                  )))
        ],
      ),
    );
  }
}
