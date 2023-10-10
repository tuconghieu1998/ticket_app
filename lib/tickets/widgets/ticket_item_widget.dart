import 'package:flutter/material.dart';
import 'package:ticket_app/asset_const.dart';
import 'package:ticket_app/tickets/screens/ticket_detail_screen.dart';

class TicketItemWidget extends StatelessWidget {
  const TicketItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return TicketDetailScreen();
          }));
        },
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
