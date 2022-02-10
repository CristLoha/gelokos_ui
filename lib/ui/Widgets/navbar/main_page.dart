import 'package:flutter/material.dart';
import 'package:gelokos_ui_app/shared/theme.dart';
import 'package:gelokos_ui_app/ui/pages/home_page.dart';
import '../../pages/filter_page.dart';
import '../../pages/like_page.dart';
import 'bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

enum BottomIcons {
  home,
  like,
  filter,
  language,
  profile,
}

class _MainPageState extends State<MainPage> {
  /// MAIN PAGE: HOME
  BottomIcons bottomIcons = BottomIcons.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          bottomIcons == BottomIcons.home ? const HomePage() : Container(),
          bottomIcons == BottomIcons.like ? const LikePage() : Container(),
          bottomIcons == BottomIcons.filter ? const FilterPage() : Container(),
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
                          bottomIcons = BottomIcons.home;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.home ? true : false,
                      text: 'HOME',
                      icons: 'assets/Icon_home.svg',
                    ),

                    /// LIKE PAGE
                    BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.like;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.like ? true : false,
                      text: 'LIKE',
                      icons: 'assets/Icon_love.svg',
                    ),

                    /// FILTER PAGE

                    BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.filter;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.filter ? true : false,
                      text: 'FILTER',
                      icons: 'assets/Icon_filter.svg',
                    ),

                    /// LANGUAGE PAGE

                    BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.language;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.language ? true : false,
                      text: 'LANGUAGE',
                      icons: 'assets/Icon_language.svg',
                    ),

                    /// PROFILE PAGE
                    BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.profile;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.profile ? true : false,
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
