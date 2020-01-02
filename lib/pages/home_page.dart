import 'package:flutter/material.dart';
import 'package:sametsahin_dev/config/assets.dart';
import 'package:sametsahin_dev/tabs/about_tab.dart';
import 'package:sametsahin_dev/tabs/blog_tab.dart';
import 'package:sametsahin_dev/tabs/projects_tab.dart';
import 'package:sametsahin_dev/widgets/theme_inherited_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<Widget> tabWidgets = <Widget>[
    AboutTab(),
    BlogTab(),
    ProjectsTab(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: ThemeSwitcher.of(context)
                    .isDarkModeOn ?
                      Icon(Icons.wb_sunny) :
                      Image.asset(Assets.moon, height: 20, width: 20),
              onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
            )
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1,
            indicatorColor: Colors.black,
            labelPadding: EdgeInsets.symmetric(horizontal: 30),
            tabs: <Widget>[
              Tab(
                text: 'About Me',
              ),
              Tab(
                text: 'Blog',
              ),
              Tab(
                text: 'Projects',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: tabWidgets,
        )
      ),
    );
  }
}
