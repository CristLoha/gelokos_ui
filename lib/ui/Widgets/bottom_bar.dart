import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/theme.dart';
import '../pages/main_page.dart';

class BottomBar extends StatefulWidget {
  Function() onPressed;
  bool bottomIcons;
  String text;
  String icons;

  BottomBar({
    Key? key,
    required this.onPressed,
    required this.bottomIcons,
    required this.text,
    required this.icons,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: widget.bottomIcons == true
          ? Container(
              decoration: BoxDecoration(
                color: blueOpacity,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
                top: 8,
                bottom: 8,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    widget.icons,
                    color: kPrimaryColor,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    widget.text,
                    style: blueTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            )
          : SvgPicture.asset(
              widget.icons,
            ),
    );
  }
}
