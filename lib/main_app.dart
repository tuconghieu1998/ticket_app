import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticket_app/app_color.dart';
import 'package:ticket_app/asset_const.dart';
import 'package:ticket_app/home/screens/home_screen.dart';
import 'package:ticket_app/tickets/screens/my_ticket_screen.dart';
import 'package:ticket_app/wallets/screens/wallet_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    WalletScreen(),
    MyTicketScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.iconHome),
            activeIcon: SvgPicture.asset(AppIcons.iconHomeActive),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.iconWallet),
            activeIcon: SvgPicture.asset(AppIcons.iconWalletActive),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.iconTicket),
            activeIcon: SvgPicture.asset(AppIcons.iconTicketActive),
            label: 'My Ticket',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: AppColor.unselectedItemColor,
        backgroundColor: const Color(0xff051138),
        onTap: _onItemTapped,
      ),
    );
  }
}
