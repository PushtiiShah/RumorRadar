import 'package:flutter/material.dart';
import 'package:rumor_radar/core/app_export.dart';
import 'package:rumor_radar/widgets/custom_elevated_button.dart';
import 'package:rumor_radar/widgets/custom_text_form_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailoneController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

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
                top: 104,
              ),
              child: Padding(
                padding: getPadding(
                  left: 27,
                  right: 28,
                  bottom: 150,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 1,
                      ),
                      child: Text(
                        "Sign in",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 20,
                      ),
                      child: Text(
                        "If you don’t have an account register",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 6,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "You can   ",
                              style: theme.textTheme.bodyLarge,
                            ),
                            TextSpan(
                              text: "Register here !",
                              style: CustomTextStyles.titleMediumBlue700,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
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
                        left: 1,
                        top: 49,
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
                        top: 12,
                      ),
                      contentPadding: getPadding(
                        top: 1,
                        bottom: 1,
                      ),
                      textStyle: theme.textTheme.bodyMedium!,
                      hintText: "Enter your Password",
                      hintStyle: theme.textTheme.bodyMedium!,
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                        margin: getMargin(
                          left: 12,
                          top: 6,
                          bottom: 11,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgEye,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          31,
                        ),
                      ),
                      obscureText: true,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 2,
                        top: 16,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: getVerticalSize(
                              12,
                            ),
                            width: getHorizontalSize(
                              15,
                            ),
                            margin: getMargin(
                              top: 3,
                              bottom: 4,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.errorContainer,
                              border: Border.all(
                                color: theme.colorScheme.errorContainer,
                                width: getHorizontalSize(
                                  1,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                              bottom: 1,
                            ),
                            child: Text(
                              "Rememebr me",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "Forgot Password ?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallOnPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomElevatedButton(
                      text: "Login",
                      margin: getMargin(
                        left: 1,
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
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          top: 41,
                        ),
                        child: Text(
                          "or continue with",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMediumGray400,
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgGoogle,
                      height: getVerticalSize(
                        34,
                      ),
                      width: getHorizontalSize(
                        33,
                      ),
                      alignment: Alignment.centerRight,
                      margin: getMargin(
                        top: 25,
                      ),
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
