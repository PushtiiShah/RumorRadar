import 'package:flutter/material.dart';
import 'package:rumor_radar/core/app_export.dart';
import 'package:rumor_radar/widgets/custom_elevated_button.dart';
import 'package:rumor_radar/widgets/custom_text_form_field.dart';

class DectectorScreen extends StatelessWidget {
  DectectorScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController linkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: getHorizontalSize(
            375,
          ),
          child: SingleChildScrollView(
            padding: getPadding(
              top: 54,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 75,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage4,
                    height: getVerticalSize(
                      443,
                    ),
                    width: getHorizontalSize(
                      375,
                    ),
                  ),
                  CustomTextFormField(
                    controller: linkController,
                    margin: getMargin(
                      left: 13,
                      top: 165,
                      right: 13,
                    ),
                    contentPadding: getPadding(
                      left: 16,
                      top: 17,
                      right: 16,
                      bottom: 17,
                    ),
                    textStyle: CustomTextStyles.bodyMediumInterPrimary,
                    hintText: "Paste the link here",
                    hintStyle: CustomTextStyles.bodyMediumInterPrimary,
                    filled: true,
                    fillColor: theme.colorScheme.errorContainer,
                    defaultBorderDecoration:
                        TextFormFieldStyleHelper.outlinePrimary,
                    enabledBorderDecoration:
                        TextFormFieldStyleHelper.outlinePrimary,
                    focusedBorderDecoration:
                        TextFormFieldStyleHelper.outlinePrimary,
                    disabledBorderDecoration:
                        TextFormFieldStyleHelper.outlinePrimary,
                  ),
                  CustomElevatedButton(
                    text: "Detect",
                    margin: getMargin(
                      left: 13,
                      top: 35,
                      right: 13,
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
