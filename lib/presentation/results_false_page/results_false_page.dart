import 'package:flutter/material.dart';
import 'package:rumor_radar/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ResultsFalsePage extends StatefulWidget {
  const ResultsFalsePage({Key? key})
      : super(
          key: key,
        );

  @override
  ResultsFalsePageState createState() => ResultsFalsePageState();
}

class ResultsFalsePageState extends State<ResultsFalsePage>
    with AutomaticKeepAliveClientMixin<ResultsFalsePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 13,
                    top: 162,
                    right: 14,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "This news seems to be",
                              style: theme.textTheme.headlineSmall,
                            ),
                            TextSpan(
                              text: " ",
                              style: CustomTextStyles.headlineSmallSemiBold,
                            ),
                            TextSpan(
                              text: "False",
                              style: CustomTextStyles.headlineSmallPink300,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        height: getVerticalSize(
                          172,
                        ),
                        width: getHorizontalSize(
                          289,
                        ),
                        margin: getMargin(
                          left: 9,
                          top: 45,
                        ),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgGroup,
                              height: getVerticalSize(
                                154,
                              ),
                              width: getHorizontalSize(
                                159,
                              ),
                              alignment: Alignment.bottomLeft,
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgVector,
                              height: getVerticalSize(
                                62,
                              ),
                              width: getHorizontalSize(
                                130,
                              ),
                              alignment: Alignment.topRight,
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgVectorErrorcontainer,
                              height: getVerticalSize(
                                62,
                              ),
                              width: getHorizontalSize(
                                130,
                              ),
                              alignment: Alignment.bottomRight,
                              margin: getMargin(
                                right: 27,
                                bottom: 6,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
