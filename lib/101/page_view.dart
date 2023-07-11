import 'package:flutter/material.dart';
import 'package:flutter_a/101/ScreenDesign.dart';
import 'package:flutter_a/demos/chatApp.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(onPressed: () {
            _pageController.previousPage(duration: DurationUtility.durationLow, curve: Curves.easeInOut);
          },child: const Icon(Icons.navigate_before),),
          FloatingActionButton(onPressed: () {
            _pageController.nextPage(duration: DurationUtility.durationLow, curve: Curves.easeInOutQuint);
          },child: const Icon(Icons.navigate_next),),

        ],
      ),
      appBar: AppBar(),
      body: PageView(
        controller:_pageController,
        children: [
          ChatApp(),
          ScreenDesign(),

        ],
      ),
    );
  }
}
class DurationUtility{
  static const durationLow=const Duration(seconds: 1);
}