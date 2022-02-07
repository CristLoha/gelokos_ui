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
            Container(
              margin: const EdgeInsets.only(top: 14),
              child: Image.asset(
                'assets/user_pic.png',
                width: 55,
              ),
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

    Widget paymentSafety() {
      return Container(
        width: 331,
        height: 90,
        margin: const EdgeInsets.only(
          top: 33,
          left: 22,
          right: 22,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage(
              'assets/bg.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icon1.png',
                  width: 60,
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Safety',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      'Kindly only use our official card',
                      style: whiteTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget listTitleKost() {
      return Container(
        margin: const EdgeInsets.only(
          top: 27,
          left: 22,
          right: 22,
        ),
        child: Text(
          'Most People Go',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget listKost() {
      return Padding(
        padding: const EdgeInsets.only(
          left: 22,
          right: 22,
          top: 16,
        ),
        child: Container(
          height: 93,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage('assets/kos1.png'),
                        fit: BoxFit.cover),
                  ),
                )
              ],
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
          paymentSafety(),
          listTitleKost(),
          listKost(),
        ],
      ),
    );
  }
}
