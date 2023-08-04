import 'package:flutter/material.dart';
import 'package:rumor_radar/core/app_export.dart';
import 'package:rumor_radar/widgets/custom_elevated_button.dart';
import 'package:rumor_radar/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailoneController = TextEditingController();

  TextEditingController usernameoneController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  TextEditingController passwordtwoController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: getHorizontalSize(
              375,
            ),
            child: SingleChildScrollView(
              padding: getPadding(
                top: 102,
              ),
              child: Padding(
                padding: getPadding(
                  left: 26,
                  right: 29,
                  bottom: 110,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sign up",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.headlineLarge,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 21,
                      ),
                      child: Text(
                        "If you already have an account register",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "You can   ",
                              style: theme.textTheme.bodyLarge,
                            ),
                            TextSpan(
                              text: "Login here !",
                              style:
                                  CustomTextStyles.titleMediumBlue700SemiBold,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 50,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelLarge,
                          ),
                          CustomTextFormField(
                            controller: emailoneController,
                            margin: getMargin(
                              top: 12,
                            ),
                            textStyle: theme.textTheme.bodyLarge!,
                            hintText: "Enter your email address",
                            hintStyle: theme.textTheme.bodyLarge!,
                            textInputAction: TextInputAction.next,
                            textInputType: TextInputType.emailAddress,
                            prefix: Container(
                              margin: getMargin(
                                top: 2,
                                right: 7,
                                bottom: 12,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMessage1,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                31,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 42,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Username",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelLarge,
                          ),
                          CustomTextFormField(
                            controller: usernameoneController,
                            margin: getMargin(
                              top: 12,
                            ),
                            contentPadding: getPadding(
                              top: 1,
                              right: 24,
                              bottom: 1,
                            ),
                            textStyle: theme.textTheme.bodyLarge!,
                            hintText: " Enter your User name",
                            hintStyle: theme.textTheme.bodyLarge!,
                            textInputAction: TextInputAction.next,
                            prefix: Container(
                              margin: getMargin(
                                right: 7,
                                bottom: 15,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgUser1,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                31,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 42,
                      ),
                      child: Text(
                        "Password",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    CustomTextFormField(
                      controller: passwordoneController,
                      margin: getMargin(
                        top: 13,
                      ),
                      textStyle: theme.textTheme.bodyMedium!,
                      hintText: "Enter your Password",
                      hintStyle: theme.textTheme.bodyMedium!,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                        margin: getMargin(
                          left: 12,
                          top: 5,
                          bottom: 11,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgEye,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          30,
                        ),
                      ),
                      obscureText: true,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 42,
                      ),
                      child: Text(
                        "Confrim Password",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    CustomTextFormField(
                      controller: passwordtwoController,
                      margin: getMargin(
                        top: 14,
                      ),
                      contentPadding: getPadding(
                        top: 1,
                        bottom: 1,
                      ),
                      textStyle: theme.textTheme.bodyMedium!,
                      hintText: "Confrim your Password",
                      hintStyle: theme.textTheme.bodyMedium!,
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                        margin: getMargin(
                          left: 30,
                          top: 5,
                          bottom: 11,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgEye,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          30,
                        ),
                      ),
                      obscureText: true,
                    ),
                    CustomElevatedButton(
                      text: "Register",
                      margin: getMargin(
                        top: 58,
                      ),
                      buttonStyle: CustomButtonStyles.outlinePrimary.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                        double.maxFinite,
                        getVerticalSize(
                          53,
                        ),
                      ))),
                      buttonTextStyle: theme.textTheme.titleMedium!,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
