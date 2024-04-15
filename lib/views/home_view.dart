import 'package:desk_live/Utils/utils.dart';
import 'package:desk_live/widget/build_type_one_news_page.dart';
import 'package:flutter/material.dart';
import '../widget/build_type_two_news_page.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Widget> pages = [
    const BuildTypeTwoNewsPage(),
    const BuildTypeOneNewsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: screenWidth(context),
        height: screenHeight(context),
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return pages[index];
          },
        ),
      ),
    );
  }
}
