import 'package:flutter/material.dart';
import 'package:ticket_app/asset_const.dart';

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
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Wallet',
      style: optionStyle,
    ),
    Text(
      'Index 2: My Ticket',
      style: optionStyle,
    ),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.iconHome)),
            activeIcon: ImageIcon(AssetImage(AppIcons.iconHomeActive)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.iconWallet)),
            activeIcon: ImageIcon(AssetImage(AppIcons.iconWalletActive)),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppIcons.iconTicket)),
            activeIcon: ImageIcon(AssetImage(AppIcons.iconTicketActive)),
            label: 'My Ticket',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
