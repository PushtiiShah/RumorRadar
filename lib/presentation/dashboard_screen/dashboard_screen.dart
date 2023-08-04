import 'package:flutter/material.dart';
import 'package:rumor_radar/core/app_export.dart';
import 'package:rumor_radar/widgets/custom_elevated_button.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        body: SizedBox(
          width: getHorizontalSize(
            375,
          ),
          child: SingleChildScrollView(
            padding: getPadding(
              top: 42,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 159,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage5,
                    height: getVerticalSize(
                      443,
                    ),
                    width: getHorizontalSize(
                      375,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      366,
                    ),
                    margin: getMargin(
                      left: 7,
                      top: 31,
                    ),
                    child: Text(
                      "End-to-end encrypted security camera let you no privacy concern",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge!.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.03,
                        ),
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                    text: "Get started",
                    margin: getMargin(
                      left: 15,
                      top: 45,
                      right: 11,
                    ),
                    buttonStyle: CustomButtonStyles.fillAmberA200.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(Size(
                      double.maxFinite,
                      getVerticalSize(
                        52,
                      ),
                    ))),
                    buttonTextStyle:
                        CustomTextStyles.headlineSmallPoppinsGray700,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
