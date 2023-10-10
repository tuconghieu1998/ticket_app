import 'package:flutter/material.dart';
import 'package:ticket_app/app_color.dart';
import 'package:ticket_app/tickets/widgets/all_ticket_list_widget.dart';

class MyTicketScreen extends StatefulWidget {
  const MyTicketScreen({super.key});

  @override
  State<MyTicketScreen> createState() => _MyTicketScreenState();
}

class _MyTicketScreenState extends State<MyTicketScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TabBar(
                dividerColor: Colors.transparent,
                labelColor: Colors.white,
                indicatorColor: Colors.transparent,
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                unselectedLabelColor: Colors.white.withOpacity(0.7),
                unselectedLabelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                controller: _tabController,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), // Creates border
                    gradient: AppColor.mainGradient),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const <Widget>[
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "News",
                  ),
                  Tab(
                    text: "Expired",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Container(
                height: 1,
                decoration: const BoxDecoration(color: Color(0xffDBDBDB)),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  AllTicketListWidget(),
                  AllTicketListWidget(),
                  AllTicketListWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
