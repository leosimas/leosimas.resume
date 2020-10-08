import 'package:flutter/material.dart';
import 'package:leosimas/components/header.dart';
import 'package:leosimas/pages/home/home.page.dart';
import 'package:leosimas/pages/profiles/profiles.page.dart';
import 'package:leosimas/pages/skills/skills.page.dart';
import 'package:leosimas/pages/work/work.page.dart';
import 'package:leosimas/resources/dimens.dart';
import 'package:leosimas/resources/profile.dart';

class MainPage extends StatefulWidget {
  final _avatarSize = 80.0;

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

  List<TabItem> _tabItems = [
    TabItem(Icons.email, 'Home', HomePage()),
    TabItem(Icons.work, 'XP', WorkPage()),
    TabItem(Icons.leaderboard, 'Skills', SkillsPage()),
    TabItem(Icons.email, 'Profiles', ProfilesPage()),
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
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Header(),
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: TabBarView(
                    controller: _tabController,
                    children: _tabItems.map((t) => _buildPage(t)).toList(),
                  ),
                ),
              ),
            ],
          ),
          _buildAvatar(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        items: _tabItems.map((t) => BottomNavigationBarItem(label: t.title, icon: Icon(t.icon))).toList(),
      ),
    );
  }

  Widget _buildAvatar() {
    final media = MediaQuery.of(context);
    final avatarHalfSize = (Dimens.MEDIUM + media.padding.top + widget._avatarSize) / 2;

    return Container(
      margin: EdgeInsets.only(left: Dimens.MEDIUM, top: avatarHalfSize),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(avatarHalfSize),
        child: Image.network(
          ResumeData.main.profilePic,
          height: widget._avatarSize,
          width: widget._avatarSize,
        ),
      ),
    );
  }

  Widget _buildPage(TabItem tabItem) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Dimens.margin(size: Dimens.XLARGE),
          tabItem.page
        ],
      ),
    );
  }
}
