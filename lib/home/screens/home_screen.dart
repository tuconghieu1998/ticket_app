import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticket_app/app_color.dart';
import 'package:ticket_app/asset_const.dart';
import 'package:ticket_app/common/widgets/avatar_widget.dart';
import 'package:ticket_app/detail/screens/movie_detail_screen.dart';
import 'package:ticket_app/home/widgets/category_tag_widget.dart';
import 'package:ticket_app/home/widgets/playing_now_movie_item_widget.dart';
import 'package:ticket_app/home/widgets/vertical_movie_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<dynamic, dynamic>> categories = [
    {"id": 0, "title": "All"},
    {"id": 1, "title": "Action"},
    {"id": 2, "title": "Drama"},
    {"id": 3, "title": "Horor"}
  ];

  int categoryActiveId = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            height: 20,
          ),
          _topbarSection(),
          const SizedBox(
            height: 30,
          ),
          _searchSection(),
          const SizedBox(
            height: 30,
          ),
          _categorySection(),
          const SizedBox(
            height: 30,
          ),
          _playingNowSection(),
          const SizedBox(
            height: 30,
          ),
          _comingSoonSection(),
        ]),
      ),
    );
  }

  Widget _topbarSection() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(
            "Find Your Best Movie",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          AvatarWidget(
            size: 48,
          )
        ],
      ),
    );
  }

  Widget _searchSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.backgroundColor2),
            height: 48,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset(
                    AppIcons.iconSearch,
                    width: 24,
                    height: 24,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const Text("Search movie")
              ]),
            ),
          )),
          const SizedBox(
            width: 12,
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColor.mainColor),
              width: 46,
              height: 46,
              child: SvgPicture.asset(
                AppIcons.iconControl,
                width: 24,
                height: 24,
                fit: BoxFit.scaleDown,
              ))
        ],
      ),
    );
  }

  Widget _categorySection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
            children: categories.map((category) {
          return Padding(
            padding: EdgeInsets.only(left: category["id"] == 0 ? 0 : 12),
            child: CategoryTagWidget(
              name: category["title"],
              isActive: categoryActiveId == category["id"],
              onPress: () {
                setState(() {
                  categoryActiveId = category["id"];
                });
              },
            ),
          );
        }).toList()),
      ),
    );
  }

  Widget _playingNowSection() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(children: [
            Expanded(
              child: Text(
                "Playing Now",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            )
          ]),
        ),
        const SizedBox(
          height: 24,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                PlayingNowMovieItemWidget(),
                const SizedBox(
                  width: 8,
                ),
                PlayingNowMovieItemWidget(),
                const SizedBox(
                  width: 8,
                ),
                PlayingNowMovieItemWidget(),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _comingSoonSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(children: [
            Expanded(
              child: Text(
                "Coming Soon",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            )
          ]),
        ),
        const SizedBox(
          height: 24,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                VerticalMovieWidget(
                  onPress: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return MovieDetailScreen();
                    }));
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                VerticalMovieWidget(),
                const SizedBox(
                  width: 15,
                ),
                VerticalMovieWidget(),
                const SizedBox(
                  width: 15,
                ),
                VerticalMovieWidget(),
                const SizedBox(
                  width: 15,
                ),
                VerticalMovieWidget(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
