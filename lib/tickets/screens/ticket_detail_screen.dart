import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:ticket_app/app_color.dart';
import 'package:ticket_app/app_style.dart';
import 'package:ticket_app/asset_const.dart';
import 'package:ticket_app/common/widgets/my_separator.dart';

class TicketDetailScreen extends StatefulWidget {
  const TicketDetailScreen({super.key});

  @override
  State<TicketDetailScreen> createState() => _TicketDetailScreenState();
}

class _TicketDetailScreenState extends State<TicketDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                child: Row(
                  children: [
                    BackButton(
                      color: Colors.white,
                    ),
                    Expanded(
                        child: Center(
                            child: Text(
                      "Ticket Details",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    )))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 84,
                      height: 120,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Ralph Breaks the Internet",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
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
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                const Text(
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
                            height: 15,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                child: Container(
                  height: 1,
                  decoration: const BoxDecoration(color: Color(0xffDBDBDB)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cinema",
                        style: AppStyle.textStyleCheckout
                            .copyWith(color: Colors.white.withOpacity(0.8))),
                    Text("FX Sudirman XXI",
                        style: AppStyle.textStyleCheckout
                            .copyWith(color: Colors.white.withOpacity(0.8)))
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Date & Time",
                        style: AppStyle.textStyleCheckout
                            .copyWith(color: Colors.white.withOpacity(0.8))),
                    Text("Sun May 22,  16:40",
                        style: AppStyle.textStyleCheckout
                            .copyWith(color: Colors.white.withOpacity(0.8)))
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Seat Number",
                        style: AppStyle.textStyleCheckout
                            .copyWith(color: Colors.white.withOpacity(0.8))),
                    Text("D7,D8,D9",
                        style: AppStyle.textStyleCheckout
                            .copyWith(color: Colors.white.withOpacity(0.8)))
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Seat Number",
                        style: AppStyle.textStyleCheckout
                            .copyWith(color: Colors.white.withOpacity(0.8))),
                    Text("D7,D8,D9",
                        style: AppStyle.textStyleCheckout
                            .copyWith(color: Colors.white.withOpacity(0.8)))
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: MySeparator(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              QrImageView(
                backgroundColor: Colors.white,
                data: '22081996',
                version: QrVersions.auto,
                size: 200.0,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "ID Order",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.7)),
              ),
              Text(
                "22081996",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
