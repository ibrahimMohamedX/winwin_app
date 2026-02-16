import 'package:WinWin/core/consts/app_assets.dart';
import 'package:WinWin/Modules/onboarding/data/model/onboarding_model.dart';
import 'package:WinWin/Modules/onboarding/presentation/widgets/onboard_card.dart';
import 'package:WinWin/core/routes/app_routes.dart';
import 'package:WinWin/core/routes/navigation_data.dart';
import 'package:WinWin/core/themes/app_colors.dart';
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
  List<OnboardingModel> onboardingItems = OnboardingModel.onboardingData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width - 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _currentPage < onboardingItems.length - 1
                ? InkWell(
                    onTap: () {
                      _currentPage++;
                      _controller.jumpToPage(_currentPage);
                      setState(() {});
                    },
                    child: FadeIn(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset(0, 5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppColors.prim1,
                          ),
                        ),
                      ),
                    ),
                  )
                : SizedBox(),
            FadeIn(
              child: InkWell(
                onTap: () {
                  //! go to main screen (for now)
                  pushAndRemoveUntil(context, AppRoutes.main);
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        spreadRadius: 0,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.prim1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(AppShapes.Sonboard_top),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(AppShapes.Sonboard_bottom),
          ),
          Positioned(
            top: 80,
            child: SizedBox(
              height: 650,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                controller: _controller,
                onPageChanged: (int page) {
                  _currentPage = page;
                  setState(() {});
                },
                children: List.generate(
                  onboardingItems.length,
                  (index) => FadeIn(
                    duration: Duration(milliseconds: 800),
                    child: OnboardCard(
                      image: onboardingItems[index].image,
                      title: onboardingItems[index].title,
                      desc: onboardingItems[index].body,
                      gohome: onboardingItems[index].gohome,
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
              children: List.generate(
                onboardingItems.length, //
                (index) => _buildIndicator(index),
              ),
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
        color: _currentPage == index ? AppColors.prim1 : AppColors.hover2,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
