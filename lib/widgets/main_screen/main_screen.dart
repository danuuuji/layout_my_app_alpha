import 'package:flutter/material.dart';
import 'package:layout_my_app_alpha/widgets/channel_list/channel_list_widget.dart';
import 'package:layout_my_app_alpha/widgets/feed_list/feed_list_widget.dart';
import 'package:layout_my_app_alpha/widgets/organization_list/organization_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  // final List<Widget> _widgetOption = <Widget>[
  //   FeedListWidget(),
  //   ChannelListWidget(),
  //   Text('Организации'),
  //   Text('Профиль'),
  // ];

  final List<Widget> _widgetOption = <Widget>[
    FeedListWidget(),
    ChannelListWidget(),
    OrganizationListWidget(),
    Text('Профиль'),
  ];

  final List<String> _titleList = <String>[
    'Главная',
    'Каналы',
    'Организации',
    'Профиль',
  ];

  String _title = 'semen loh';

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
      _title = _titleList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Главное меню'),
      //   backgroundColor: AppBarTheme.of(context).backgroundColor,
      // ),
      appBar: AppBar(title: Text(_title)),
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
