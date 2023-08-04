import 'package:flutter/material.dart';
import 'package:rumor_radar/core/app_export.dart';
import 'package:rumor_radar/widgets/app_bar/appbar_image.dart';
import 'package:rumor_radar/widgets/app_bar/appbar_title.dart';
import 'package:rumor_radar/widgets/app_bar/custom_app_bar.dart';

class ResultsTrueScreen extends StatelessWidget {
  const ResultsTrueScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            93,
          ),
          leadingWidth: 81,
          leading: AppbarImage(
            height: getVerticalSize(
              45,
            ),
            width: getHorizontalSize(
              46,
            ),
            imagePath: ImageConstant.imgLogo1,
            margin: getMargin(
              left: 35,
              top: 24,
              bottom: 24,
            ),
          ),
          title: AppbarTitle(
            text: "RUMOR RADAR",
            margin: getMargin(
              left: 42,
            ),
          ),
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 4,
            ),
            child: Container(
              margin: getMargin(
                bottom: 5,
              ),
              padding: getPadding(
                left: 15,
                top: 9,
                right: 15,
                bottom: 9,
              ),
              decoration: AppDecoration.fill1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 8,
                    ),
                    child: Text(
                      "Home",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.headlineSmallBold,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 36,
                      bottom: 9,
                    ),
                    child: Text(
                      "Evidences",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 25,
                      bottom: 9,
                    ),
                    child: Text(
                      "Profile",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall,
                    ),
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
