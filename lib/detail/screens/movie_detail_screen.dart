import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ticket_app/asset_const.dart';
import 'package:ticket_app/common/widgets/author_widget.dart';
import 'package:ticket_app/detail/widgets/movie_trailer_video_widget.dart';

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({super.key});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        _headerSection(),
        const SizedBox(
          height: 20,
        ),
        TabBar(
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          unselectedLabelColor: Colors.white.withOpacity(0.7),
          unselectedLabelStyle:
              TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: "About Movie",
            ),
            Tab(
              text: "Review",
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              _aboutMovieTab(),
              Center(
                child: Text("It's rainy here"),
              )
            ],
          ),
        ),
      ],
    ));
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
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.black.withOpacity(0.4)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(AppIcons.iconBack),
                    )),
              ))
        ],
      ),
    );
  }

  Widget _aboutMovieTab() {
    return const SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Synopsis",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              "Wreck-It Ralph wants to be loved by many people like his kind friend, Fix-It Felix. But no one likes evil characters like Ralph. "),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              "Ralph's goal was simple, wanting to win and get a medal to be considered a hero. But without realizing Ralph instead paved the way for criminals who can kill all the games in the game complex."),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Cast & Crew",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                AuthorWidget(),
                const SizedBox(
                  width: 24,
                ),
                AuthorWidget(),
                const SizedBox(
                  width: 24,
                ),
                AuthorWidget(),
                const SizedBox(
                  width: 24,
                ),
                AuthorWidget(),
                const SizedBox(
                  width: 24,
                ),
                AuthorWidget(),
                const SizedBox(
                  width: 24,
                ),
                AuthorWidget(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Trailer and song",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                MovieTrailerVideoWidget(
                    imgBackground: AppImages.imgMovieTrailer1),
                const SizedBox(
                  width: 10,
                ),
                MovieTrailerVideoWidget(
                    imgBackground: AppImages.imgMovieTrailer2),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    ));
  }
}
