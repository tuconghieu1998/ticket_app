import 'package:flutter/material.dart';
import 'package:ticket_app/tickets/widgets/ticket_item_widget.dart';

class AllTicketListWidget extends StatelessWidget {
  const AllTicketListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Expanded(
        child: SingleChildScrollView(
            child: Column(
          children: [
            TicketItemWidget(),
            TicketItemWidget(),
            TicketItemWidget(),
            TicketItemWidget(),
            TicketItemWidget(),
            TicketItemWidget(),
            TicketItemWidget(),
          ],
        )),
      ),
    );
  }
}
