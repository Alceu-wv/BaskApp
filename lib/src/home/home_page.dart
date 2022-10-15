import 'package:bask_app/src/add_time/add_time_view.dart';
import 'package:bask_app/src/components/my_botton_bar.dart';
import 'package:bask_app/src/meus_times/meus_times_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  late PageController pageController;

  setCurrentPage(page) {
    setState(() => currentPage = page);
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BaskBottonBar(pageController),
      body: PageView(
        controller: pageController,
        onPageChanged: setCurrentPage,
        children: [
          MeusTimesView(),
          AddTimeView(),
        ],
      ),
    );
  }
}
