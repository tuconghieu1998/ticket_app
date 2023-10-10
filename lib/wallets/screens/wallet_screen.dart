import 'package:flutter/material.dart';
import 'package:ticket_app/asset_const.dart';
import 'package:ticket_app/wallets/widgets/ticket_transaction_item_widget.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "My Ticket",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Image.asset(
                AppImages.imgWalletCard,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
            child: Text(
              "Recent Transactions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                TicketTransactionItemWidget(),
                TicketTransactionItemWidget(),
                TicketTransactionItemWidget(),
                TicketTransactionItemWidget(),
                TicketTransactionItemWidget(),
                TicketTransactionItemWidget(),
                TicketTransactionItemWidget(),
              ]),
            ),
          )),
        ],
      )),
    );
  }
}
