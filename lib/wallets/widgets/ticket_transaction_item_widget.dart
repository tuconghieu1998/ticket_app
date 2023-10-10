import 'package:flutter/material.dart';
import 'package:ticket_app/asset_const.dart';

class TicketTransactionItemWidget extends StatelessWidget {
  const TicketTransactionItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: InkWell(
        onTap: () {},
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
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ralph Breaks the Internet",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "IDR 150.000",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFF5C83)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "16:40, Sun May 22",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.7)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
