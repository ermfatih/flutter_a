import 'package:flutter/material.dart';
import 'package:flutter_a/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              tabController.animateTo(_MyTabViews.home.index);
            },
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: 10,
            shape: const CircularNotchedRectangle(),
            child: TabBar(
              controller: tabController,
              tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList(),
            ),
          ),
          /*appBar: AppBar(
            toolbarHeight: 80,
            bottom: const TabBar(tabs: [
              SizedBox(
                height: 50,
                  child: Center(child: Text('asdasd'))),
              SizedBox(
                  height: 50,
                  child: Center(child: Text('asdasd'))),
            ]),
          ),*/
          body: myTabbarView(),
        ));
  }

  TabBarView myTabbarView() {
    return TabBarView(
      controller: tabController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        const ImageLearn(),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.green,
        )
      ],
    );
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews {}
