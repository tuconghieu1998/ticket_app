import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ticket_app/app_color.dart';
import 'package:ticket_app/app_style.dart';
import 'package:ticket_app/asset_const.dart';
import 'package:ticket_app/common/widgets/main_button.dart';

class CheckoutMovieScreen extends StatefulWidget {
  const CheckoutMovieScreen({super.key});

  @override
  State<CheckoutMovieScreen> createState() => _CheckoutMovieScreenState();
}

class _CheckoutMovieScreenState extends State<CheckoutMovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
              child: Row(
                children: [
                  BackButton(
                    color: Colors.white,
                  ),
                  Expanded(
                      child: Center(
                          child: Text(
                    "Checkout Movie",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
                        Text(
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
                          height: 15,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Container(
                height: 1,
                decoration: BoxDecoration(color: Color(0xffDBDBDB)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("ID Order",
                      style: AppStyle.textStyleCheckout
                          .copyWith(color: Colors.white.withOpacity(0.8))),
                  Text("22081996",
                      style: AppStyle.textStyleCheckout
                          .copyWith(color: Colors.white.withOpacity(0.8)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
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
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
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
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
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
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("ID Order",
                      style: AppStyle.textStyleCheckout
                          .copyWith(color: Colors.white.withOpacity(0.8))),
                  Text("22081996",
                      style: AppStyle.textStyleCheckout
                          .copyWith(color: Colors.white.withOpacity(0.8)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Price",
                      style: AppStyle.textStyleCheckout
                          .copyWith(color: Colors.white.withOpacity(0.8))),
                  Text("Rp 50.000 x 3",
                      style: AppStyle.textStyleCheckout
                          .copyWith(color: Colors.white.withOpacity(0.8)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total",
                      style: AppStyle.textStyleCheckout
                          .copyWith(color: Colors.white.withOpacity(0.8))),
                  Text(
                    "Rp 150.000",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Container(
                height: 1,
                decoration: BoxDecoration(color: Color(0xffDBDBDB)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Wallet",
                      style: AppStyle.textStyleCheckout
                          .copyWith(color: Colors.white.withOpacity(0.8))),
                  Text(
                    "IDR 200.000",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColor.mainColor),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MainButton(width: 255, height: 61, textButton: "Checkout")
          ],
        ),
      ),
    );
  }
}
