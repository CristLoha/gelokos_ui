import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelokos_ui_app/shared/theme.dart';
import 'package:gelokos_ui_app/ui/Widgets/bottom_bar.dart';
import 'package:gelokos_ui_app/ui/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

enum BottomIcons {
  Home,
  Like,
  Filter,
  Language,
  Profile,
}

class _MainPageState extends State<MainPage> {
  BottomIcons bottomIcons = BottomIcons.Home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          bottomIcons == BottomIcons.Home ? HomePage() : Container(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 94,
              decoration: BoxDecoration(
                color: kWhiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 22,
                  bottom: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// HOME PAGE
                    BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Home;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Home ? true : false,
                      text: 'HOME',
                      icons: 'assets/Icon_home.svg',
                    ),

                    /// LIKE PAGE
                    BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Like;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Like ? true : false,
                      text: 'LIKE',
                      icons: 'assets/Icon_love.svg',
                    ),

                    /// FILTER PAGE

                    BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Filter;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Filter ? true : false,
                      text: 'FILTER',
                      icons: 'assets/Icon_filter.svg',
                    ),

                    /// LANGUAGE PAGE

                    BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Language;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Language ? true : false,
                      text: 'LANGUAGE',
                      icons: 'assets/Icon_language.svg',
                    ),

                    /// PROFILE PAGE
                    BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Profile;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Profile ? true : false,
                      text: 'PROFILE',
                      icons: 'assets/Icon_user.svg',
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
