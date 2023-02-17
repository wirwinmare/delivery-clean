import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/common_widgets/common_widgets.dart';
import '../../l10n/string_hardcoded.dart';
import '../constants/app_sizes.dart';
import '../constants/assets_path.dart';
import 'app_router.dart';

/// Simple not found screen used for 404 errors (page not found on web)
class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.p16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              AssetsPath.img404,
              fit: BoxFit.contain,
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: PrimaryButton(
                onPressed: () => context.goNamed(AppRoute.home.name),
                text: 'Go Home'.hardcoded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
