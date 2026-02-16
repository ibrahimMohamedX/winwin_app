import 'package:WinWin/core/consts/app_assets.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String body;
  final bool gohome;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.body,
    required this.gohome,
  });

  static List<OnboardingModel> onboardingData = [
    OnboardingModel(
      image: AppAssets.Ponboard_1,
      title: 'Welcome to WinWin',
      body:
          'Discover amazing product for evre need.Shop smart,live better.Everything you need ,all in one place',
      gohome: false,
    ),
    OnboardingModel(
      image: AppAssets.Ponboard_2,
      title: 'Discover Amazing Product',
      body: 'Clothes , electronics , books and more in one place',
      gohome: false,
    ),
    OnboardingModel(
      image: AppAssets.Ponboard_2,
      title: 'Easy& Fast Shopping',
      body: 'Add items to your cart and order in just a few steps',
      gohome: false,
    ),
    OnboardingModel(
      image: AppAssets.Ponboard_3,
      title: 'Ready?',
      body: '.Start shopping now.Find what you love today.Lets get shopping',
      gohome: true,
    ),
  ];
}
