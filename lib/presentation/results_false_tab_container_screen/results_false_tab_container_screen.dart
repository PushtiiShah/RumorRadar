import 'package:flutter/material.dart';
import 'package:rumor_radar/core/app_export.dart';
import 'package:rumor_radar/presentation/results_false_page/results_false_page.dart';
import 'package:rumor_radar/widgets/app_bar/appbar_image.dart';
import 'package:rumor_radar/widgets/app_bar/appbar_title.dart';
import 'package:rumor_radar/widgets/app_bar/custom_app_bar.dart';

class ResultsFalseTabContainerScreen extends StatefulWidget {
  const ResultsFalseTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ResultsFalseTabContainerScreenState createState() =>
      ResultsFalseTabContainerScreenState();
}

class ResultsFalseTabContainerScreenState
    extends State<ResultsFalseTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: getVerticalSize(
                    59,
                  ),
                  width: getHorizontalSize(
                    375,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.blue700,
                  ),
                  child: TabBar(
                    controller: tabviewController,
                    tabs: [
                      Tab(
                        child: Text(
                          "Home",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Evidences",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Profile",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(
                    720,
                  ),
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ResultsFalsePage(),
                      ResultsFalsePage(),
                      ResultsFalsePage(),
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
