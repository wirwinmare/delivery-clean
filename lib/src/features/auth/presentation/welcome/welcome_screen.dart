import 'package:delivery/src/core/constants/app_sizes.dart';
import 'package:delivery/src/features/common_widgets/primary_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/assets_path.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              AssetsPath.imgSplashBg,
              fit: BoxFit.cover,
              height: size.height,
              width: size.width,
            ),
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(Sizes.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'DELIVERED\nFAST FOOD\nTO YOUR\nDOOR',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      'Set exact location to find the right restaurants near you.',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white),
                    ),
                    gapH48,
                    PrimaryButton(
                      text: 'Sign In',
                      onPressed: () {},
                    ),
                    gapH20,
                    PrimaryButton(
                      text: 'Connect with google',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
