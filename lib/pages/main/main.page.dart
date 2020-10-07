import 'package:flutter/material.dart';
import 'package:leosimas/pages/home/home.page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class TabItem {
  final IconData icon;
  final String title;
  final Widget page;

  TabItem(this.icon, this.title, this.page);
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {

  static const _MAX_WIDTH = 800.0;

  List<TabItem> _tabItems = [
    TabItem(Icons.email, 'Home', HomePage()),
    TabItem(Icons.work, 'XP', HomePage()),
    TabItem(Icons.leaderboard, 'Skills', HomePage()),
    TabItem(Icons.email, 'Contact', HomePage()),
  ];
  int _currentIndex = 0;
  TabController _tabController;

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabItems.length, initialIndex: _currentIndex);
    _tabController.addListener(() {
      _updateIndex(_tabController.index);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  _updateIndex(int newIndex) {
    setState(() => _currentIndex = newIndex);
  }

  _onTabTapped(int newIndex) {
    _updateIndex(newIndex);
    _tabController.animateTo(newIndex);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: _tabItems.map((t) => t.page).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        items: _tabItems
            .map((t) => BottomNavigationBarItem(label: t.title, icon: Icon(t.icon)))
            .toList(),
      ),
    );
  }
}
