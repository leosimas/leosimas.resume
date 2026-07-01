import 'package:flutter/material.dart';
import 'package:leosimas/components/header.dart';
import 'package:leosimas/locale/locale_controller.dart';
import 'package:leosimas/pages/home/home.page.dart';
import 'package:leosimas/pages/profiles/profiles.page.dart';
import 'package:leosimas/pages/skills/skills.page.dart';
import 'package:leosimas/pages/work/work.page.dart';
import 'package:leosimas/resources/app_strings.dart';
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
  int _currentIndex = 0;
  late TabController _tabController;

  List<TabItem> _buildTabItems(AppStrings strings) => [
        TabItem(Icons.home, strings.tabHome, HomePage()),
        TabItem(Icons.work, strings.tabWork, WorkPage()),
        TabItem(Icons.leaderboard, strings.tabSkills, SkillsPage()),
        TabItem(Icons.person, strings.tabProfiles, ProfilesPage()),
      ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4, initialIndex: _currentIndex);
    _tabController.addListener(() {
      _updateIndex(_tabController.index);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _updateIndex(int newIndex) {
    setState(() => _currentIndex = newIndex);
  }

  void _onTabTapped(int newIndex) {
    _updateIndex(newIndex);
    _tabController.animateTo(newIndex);
  }

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings.of(context);
    final locale = LocaleProvider.localeOf(context);
    final tabItems = _buildTabItems(strings);

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
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TabBarView(
                    controller: _tabController,
                    children: tabItems.map((t) => _buildPage(t)).toList(),
                  ),
                ),
              ),
            ],
          ),
          _buildAvatar(locale),
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
        items: tabItems.map((t) => BottomNavigationBarItem(label: t.title, icon: Icon(t.icon))).toList(),
      ),
    );
  }

  Widget _buildAvatar(locale) {
    final media = MediaQuery.of(context);
    final avatarHalfSize = (Dimens.MEDIUM + media.padding.top + widget._avatarSize) / 2;
    final resume = ResumeData.forLocale(locale);

    return Container(
      margin: EdgeInsets.only(left: Dimens.MEDIUM, top: avatarHalfSize),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(avatarHalfSize),
        child: Image.network(
          resume.profilePic,
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
          tabItem.page,
        ],
      ),
    );
  }
}
