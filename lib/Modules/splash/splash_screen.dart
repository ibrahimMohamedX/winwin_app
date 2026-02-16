import 'package:WinWin/core/shared/widgets/animations/fadein_animated.dart';
import 'package:WinWin/core/shared/widgets/animations/fadeup_animated.dart';
import 'package:WinWin/core/shared/widgets/components/main_button.dart';
import 'package:WinWin/core/consts/app_assets.dart';
import 'package:WinWin/core/routes/navigation_data.dart';
import 'package:WinWin/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              AppAssets.LanimatedLogo,
              width: MediaQuery.of(context).size.width,
              repeat: false,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 80),
            FadeINAnimated(
              delay_milisec: 5000,
              widget: Column(
                children: [
                  SizedBox(
                    width: 335,
                    child: MainButton(
                      text: 'Let\'s get strarted',
                      width_present: 0.8933333333333333,
                      ontap: () {
                        //! navigate to onboarding screen
                        pushTo(context, AppRoutes.onboarding);
                      },
                    ),
                  ),

                  SizedBox(height: 20),
                  Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'I already have an account',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SvgPicture.asset(AppIcons.Sarrow_right),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
