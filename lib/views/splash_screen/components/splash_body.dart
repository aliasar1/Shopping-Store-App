import 'package:flutter/material.dart';

import '../../../utils/color_scheme.dart';
import '../../../utils/constants.dart';
import '../../../widgets/custom_widgets/custom_text.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            Icons.shopping_bag_rounded,
            color: AppColors.kLightGreen,
            size: Constants.kBigIconSize,
          ),
          Txt(
            text: Constants.appName,
            fontWeight: FontWeight.bold,
            color: AppColors.kDarkBlue,
            fontSize: Constants.kTitleFontSize * 1.2,
          ),
        ],
      ),
    );
  }
}
