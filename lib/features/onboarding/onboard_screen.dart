import 'package:WinWin/core/consts/assets_data.dart';
import 'package:WinWin/core/consts/colors_data.dart';
import 'package:WinWin/features/onboarding/onboard_card.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  List imgs = [AssetsData.Ponboard_1, AssetsData.Ponboard_2];
  List titles = ['Hello', 'Ready?'];
  List descs = [
    'Discover amazing product for evre need.Shop smart,live better.Everything you need ,all in one place',
    '.Start shopping now.Find what you love today.Lets get shopping',
  ];
  List gohome = [false, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(ShapesData.Sonboard_top),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(ShapesData.Sonboard_bottom),
          ),
          Positioned(
            top: 80,
            child: Container(
              height: 650,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                controller: _controller,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: List.generate(
                  imgs.length,
                  (index) => FadeIn(
                    duration: Duration(milliseconds: 800),
                    child: OnboardCard(
                      image: imgs[index],
                      title: titles[index],
                      desc: descs[index],
                      gohome: gohome[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(2, (index) => _buildIndicator(index)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 5),
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: _currentPage == index
            ? ColorsData.primaryColor
            : ColorsData.secondryColor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
