import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 22,
        ),
        child: Row(
          children: [
            SvgPicture.asset('assets/Icon_menu_outline.svg'),
            const SizedBox(width: 20),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 33,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Shayna Far',
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/user_pic.png',
              width: 55,
            ),
          ],
        ),
      );
    }

    Widget searchBox() {
      var outlineInputBorder = const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(11),
          ),
          borderSide: BorderSide.none);

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Form(
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: kWhiteColor,
              border: outlineInputBorder,
              enabledBorder: outlineInputBorder,
              focusedBorder: outlineInputBorder,
              hintText: 'Find your next home',
              hintStyle: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  'assets/Icon_search_outline.svg',
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          header(),
          searchBox(),
        ],
      ),
    );
  }
}
