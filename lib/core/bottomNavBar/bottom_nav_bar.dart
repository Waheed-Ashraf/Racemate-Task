import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';
import 'package:optomatica_flutter_task/featuers/explore/presentation/view/explore_view.dart';
import 'package:optomatica_flutter_task/featuers/home/presentation/view/home_view.dart';
import 'package:optomatica_flutter_task/featuers/me/presentation/view/me_view.dart';
import 'package:optomatica_flutter_task/featuers/race/presentation/view/race_view.dart';
import 'package:optomatica_flutter_task/featuers/train/presentation/view/train_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List _pages = const [
    HomeView(),
    TrainView(),
    RaceView(),
    ExploreView(),
    MeView(),
  ];
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 5),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentPage,
            onTap: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedLabelStyle: TextStyle(
              color: ColorPallet.primaryColor,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              color: ColorPallet.secondBlueColor,
            ),
            iconSize: 28,
            selectedItemColor: ColorPallet.primaryColor,
            unselectedItemColor: ColorPallet.secondBlueColor,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.house,
                ),
                label: "Home",
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.dumbbell,
                ),
                label: "Train",
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor: ColorPallet.secondaryColor,
                  radius: 20,
                  child: const Icon(FontAwesomeIcons.personRunning),
                ),
                label: "",
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                ),
                label: "Explore",
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.person,
                ),
                label: "Me",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
