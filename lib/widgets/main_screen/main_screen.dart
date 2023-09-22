import 'package:flutter/material.dart';
import 'package:layout_my_app_alpha/widgets/feed_list/feed_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;
  static const List<Widget> _widgetOption = <Widget>[
    FeedListWidget(),
    Text('Каналы'),
    Text('Организации'),
    Text('Профиль'),
  ];

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Главное меню'),
      //   backgroundColor: AppBarTheme.of(context).backgroundColor,
      // ),
      body: Center(
        child: _widgetOption[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).bottomAppBarTheme.color,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _selectedTab,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_sharp), label: 'Каналы'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Организации'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль')
        ],
        onTap: onSelectTab,
      ),
    );
  }
}
