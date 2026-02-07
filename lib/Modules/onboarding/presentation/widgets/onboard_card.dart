import 'package:WinWin/core/components/main_button.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardCard extends StatelessWidget {
  const OnboardCard({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
    this.gohome = false,
  });

  final String image;
  final String title;
  final String desc;
  final bool gohome;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 15,
            spreadRadius: 0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Container(
        clipBehavior: Clip.antiAlias,
        width: MediaQuery.of(context).size.width * 0.8666666666666667,
        height: 615,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: AppColors.white,
        ),
        child: Container(
          child: Column(
            children: [
              Image.asset(
                image, //* var
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Spacer(),
              Text(
                title, //* var
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: Text(
                  desc, //* var
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              //* check
              gohome
                  ? SizedBox(
                      width: 200,
                      child: MainButton(
                        text: "Let's start",
                        ontap: () {
                          //! go to home screen
                        },
                      ),
                    )
                  : SizedBox(),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
