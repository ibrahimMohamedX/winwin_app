import 'package:WinWin/core/components/main_button.dart';
import 'package:WinWin/core/consts/assets_data.dart';
import 'package:WinWin/core/routes/navigation_data.dart';
import 'package:WinWin/core/routes/routes_data.dart';
import 'package:animate_do/animate_do.dart';
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
              AssetsData.LanimatedLogo,
              width: MediaQuery.of(context).size.width,
              repeat: false,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 80),
            Column(
              children: [
                FadeInUp(
                  from: 20,
                  delay: Duration(seconds: 3),
                  duration: Duration(milliseconds: 500),
                  child: SizedBox(
                    width: 335,
                    child: MainButton(
                      text: 'Let\'s get strarted',
                      ontap: () {
                        //! navigate to onboarding screen
                        pushTo(context, RoutesData.onboarding);
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FadeInUp(
                  from: 20,
                  delay: Duration(milliseconds: 3200),
                  duration: Duration(milliseconds: 500),
                  child: Row(
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
                      SvgPicture.asset(IconsData.Sarrow_right),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
