

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_structure/global/utils/config.dart';
import 'package:flutter_structure/global/widgets/app_button.dart';
import 'package:get/get.dart';
import 'package:flutter_structure/global/constant/resources/import_resources.dart';
import 'package:flutter_structure/global/utils/validator.dart';
import 'package:flutter_structure/global/widgets/custom_text_field.dart';
import 'package:flutter_structure/src/routes/app_pages.dart';
import 'package:flutter_structure/src/views/authorization/signup_screen/controller/signup_screen_controller.dart';

class SignupScreenView extends GetView<SignupScreenController> {
  const SignupScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.createAccountFormKey = GlobalKey<FormState>();

    return WillPopScope(
        onWillPop: () async {
          return await Get.offAllNamed(Routes.welcomeScreen);
        },
        child: Scaffold(
            backgroundColor: AppColors.kcPrimaryColor,
            body: SingleChildScrollView(
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: ksBodyHorizontalSpace15,
                        vertical: ksBodyVerticalSpace15),
                    child: Form(
                        key: controller.createAccountFormKey,
                        child: Obx(() {
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: ksBodyHorizontalSpace80),
                                const SizedBox(height: ksBodyHorizontalSpace30),
                                Text(R.strings.ksWelcomeToDemo,
                                    style: AppStyles.txt32sizeWithW700),
                                SizedBox(height: Get.height * 0.001),
                                Text(R.strings.ksCreateNewAccount,
                                    style: AppStyles.txt18sizeWithW600),
                                SizedBox(height: Get.height * 0.04),
                                buildTextField(
                                    hintText: R.strings.ksNameHint,
                                    textEditingController: controller
                                        .firstNameTextEditingController,
                                    validator: Validator.validateFirstName),
                                buildTextField(
                                    hintText: R.strings.ksLNameHint,
                                    textEditingController: controller
                                        .lastNameTextEditingController,
                                    validator: Validator.validLastName),
                                buildTextField(
                                    hintText: R.strings.ksEmailHint,
                                    inputType: TextInputType.emailAddress,
                                    textEditingController:
                                        controller.emailTextEditingController,
                                    validator: Validator.validateEmail),
                                buildTextField(
                                    hintText: R.strings.ksUserNameHint,
                                    textEditingController: controller
                                        .usernameTextEditingController,
                                    validator: Validator.validateUserName),
                                buildPhoneField(),
                                buildPwdField(
                                    textEditingController: controller
                                        .passwordTextEditingController,
                                    hintText: R.strings.ksNewPassHint,
                                    validator: Validator.validateNewPassword,
                                    isPwd: controller.isPwdVisible),
                                buildPwdField(
                                    textEditingController: controller
                                        .confirmPasswordTextEditingController,
                                    hintText: R.strings.ksConfirmPassHint,
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return R.validation.ksEmptyPassword;
                                      } else if (controller
                                              .passwordTextEditingController
                                              .text
                                              .toString()
                                              .trim() !=
                                          v.toString().trim()) {
                                        return R.validation.ksConfirmPassError;
                                      } else {
                                        return null;
                                      }
                                    },
                                    isPwd: controller.isConPwdVisible),
                                buildAcceptTermsConditions(),
                                SizedBox(height: Get.height * 0.04),
                                AppButton(
                                    btnText: R.strings.ksSignup,
                                    onTap: () => controller.validAll()),
                                SizedBox(height: Get.height * 0.04),
                                alreadyHaveAnAccountComponent(),
                                SizedBox(height: Get.height * 0.03),
                              ]);
                        }))))));
  }

  buildAcceptTermsConditions() {
    return Row(children: [
      checkBox(checkboxValue: controller.termAndConditionCheckBox),
      SizedBox(width: Get.width * 0.01),
      bySigningUpYouComponent()
    ]);
  }

  alreadyHaveAnAccountComponent() {
    return Center(
        child: RichText(
            text: TextSpan(
                text: '${R.strings.ksAlreadyHaveAnAccount} ',
                style: AppStyles.txt14sizeW600ckcWhite,
                children: <TextSpan>[
          TextSpan(
              text: R.strings.ksLogin,
              style: AppStyles.txt14sizeWithW600Underline,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.toNamed(Routes.loginScreen);
                })
        ])));
  }

  checkBox({required RxBool checkboxValue}) {
    return SizedBox(
        width: 22,
        height: 22,
        child: Obx(() => Checkbox(
            value: checkboxValue.value,
            onChanged: (value) {
              checkboxValue.value = !checkboxValue.value;
              controller.isAcceptPolicy.value = checkboxValue.value;
            },
            activeColor: AppColors.kcPrimaryColor,
            side: MaterialStateBorderSide.resolveWith(
                (states) => const BorderSide(color: AppColors.kcWhite)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0)))));
  }

  bySigningUpYouComponent() {
    return Flexible(
        child: RichText(
            text: TextSpan(
                text: '${R.strings.ksBySigningUpYou} ',
                style: AppStyles.txt10sizeWithW500,
                children: <TextSpan>[
          TextSpan(
              text: R.strings.ksTermsAndConditions,
              style:
                  AppStyles.txt14sizeWithW600Underline.copyWith(fontSize: 10)),
          TextSpan(
              text: ' ${R.strings.ksAnd} ', style: AppStyles.txt10sizeWithW500),
          TextSpan(
              text: R.strings.ksPrivacyPolicy,
              style:
                  AppStyles.txt14sizeWithW600Underline.copyWith(fontSize: 10),
              recognizer: TapGestureRecognizer())
        ])));
  }

  toWebScreen({required String slug}) {
    Get.toNamed(Routes.termsPrivacyScreen, arguments: [
      {Config.argSlug: slug}
    ]);
  }

  buildTextField(
      {required String hintText,
      required TextEditingController textEditingController,
      FormFieldValidator<String?>? validator,
      TextInputType? inputType,
      bool? isReadOnly,
      GestureTapCallback? onTap}) {
    return Padding(
        padding: EdgeInsets.only(right: 2, bottom: Get.height * 0.02),
        child: AppTextField(
            onTap: onTap,
            isReadOnly: isReadOnly ?? false,
            maxLines: 1,
            cursorcolor: AppColors.kcWhite,
            textStyle: AppStyles.txt14sizeW600ckcWhite,
            hintText: hintText,
            errorText: '',
            textEditingController: textEditingController,
            validator: validator,
            inputAction: TextInputAction.next,
            keyBoardType: inputType ?? TextInputType.text,
            textCapitalization: TextCapitalization.sentences));
  }

  buildPhoneField() {
    return Padding(
        padding: const EdgeInsets.only(right: 2),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              flex: 22,
              child: buildTextField(
                  onTap: () {
                    controller.openCountryBottomSheet();
                  },
                  hintText: R.strings.ksCountryCodeHint,
                  textEditingController: controller.countryCodeController,
                  isReadOnly: true)),
          SizedBox(width: Get.width * 0.03),
          Expanded(
              flex: 73,
              child: buildTextField(
                  hintText: R.strings.ksPhoneHint,
                  textEditingController: controller.contactNumberController,
                  validator: Validator.validNumber,
                  inputType: TextInputType.phone))
        ]));
  }

  buildPwdField(
      {required String hintText,
      required TextEditingController textEditingController,
      RxBool? isPwd,
      FormFieldValidator<String?>? validator}) {
    return Obx(() {
      return Padding(
          padding: EdgeInsets.only(right: 2, bottom: Get.height * 0.02),
          child: AppTextField(
              maxLines: 1,
              hintText: hintText,
              errorText: '',
              inputFormatter: Validator.nameFormatterWithSpecialChar,
              textEditingController: textEditingController,
              validator: validator,
              isPwd: isPwd!.value ? false : true,
              cursorcolor: AppColors.kcWhite,
              textStyle: AppStyles.txt14sizeW600ckcWhite,
              suffixIconPath:
                  isPwd.value ? AppAssets.passwordHide : AppAssets.passwordShow,
              onSuffixIconTap: () {
                isPwd.value = !isPwd.value;
              },
              inputAction: TextInputAction.next,
              keyBoardType: TextInputType.visiblePassword,
              textCapitalization: TextCapitalization.none));
    });
  }
}
