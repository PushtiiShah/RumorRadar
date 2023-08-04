import 'package:flutter/material.dart';
import 'package:rumor_radar/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        body: SizedBox(
          width: getHorizontalSize(
            385,
          ),
          child: SingleChildScrollView(
            padding: getPadding(
              top: 205,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgLogo1,
              height: getVerticalSize(
                876,
              ),
              width: getHorizontalSize(
                385,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
