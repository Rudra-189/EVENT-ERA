import 'package:eventera/core/generated/assets.gen.dart';
import 'package:eventera/core/utils/app_exports.dart';
import 'package:eventera/core/utils/navigator_service.dart';
import 'package:eventera/core/utils/validator.dart';
import 'package:eventera/viewmodels/bloc/auth_bloc.dart';
import 'package:eventera/widgets/common_widget/custom_button.dart';
import 'package:eventera/widgets/common_widget/custom_textfields.dart';
import 'package:eventera/widgets/common_widget/image_view.dart';

class SignupScreen extends StatelessWidget {
  static Widget builder(BuildContext context) => const SignupScreen();
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).customColors.backGroundColor,
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildSignUpForm(context, state)],
            ),
          );
        },
      ),
    );
  }
}

Widget _buildSignUpForm(BuildContext context, AuthState state) {
  return Form(
    key: state.signupFormKey,
    child: Column(
      children: [
        CustomTextInputField(
          hint: "user name",
          controller: state.signupNameController,
          prefixIcon: CustomImageView(
            imagePath: Assets.images.svgs.icons.icProfile.path,
            margin: EdgeInsets.all(15),
          ),
          onChanged: (value) => context
              .read<AuthBloc>()
              .add(OnSignupNameChangeEvent(name: value)),
          validator: (value) => Validator.validateName(value),
        ),
        buildSizedBoxH(15.h),
        CustomTextInputField(
          hint: "email",
          controller: state.signupEmailController,
          prefixIcon: CustomImageView(
            imagePath: Assets.images.svgs.icons.icEmail.path,
            margin: EdgeInsets.all(15),
          ),
          onChanged: (value) => context
              .read<AuthBloc>()
              .add(OnSignupEmailChangeEvent(email: value)),
          validator: (value) => Validator.validateEmail(value),
        ),
        buildSizedBoxH(15.h),
        CustomTextInputField(
          hint: "password",
          controller: state.signupPassWordController,
          prefixIcon: CustomImageView(
            imagePath: Assets.images.svgs.icons.icLock.path,
            margin: EdgeInsets.all(15),
          ),
          onChanged: (value) => context
              .read<AuthBloc>()
              .add(OnSigniupPasswordChangeEvent(password: value)),
          validator: (value) => Validator.validatePassword(value),
        ),
        buildSizedBoxH(5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Forgot Your Password?",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 12.sp,
                  color: Theme.of(context).customColors.primaryColor),
            ),
          ],
        ),
        buildSizedBoxH(50.h),
        CustomElevatedButton(
          text: "CREATE ACCOUNT",
          onPressed: () => {
            if (state.signupFormKey.currentState?.validate() ?? false)
              {NavigatorService.pushNamed(AppRoutes.signiupProcessScreen)}
          },
        ),
        buildSizedBoxH(5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 12.sp,
                  color: Theme.of(context).customColors.textdarkcolor),
            ),
            GestureDetector(
              onTap: () {
                NavigatorService.pushAndRemoveUntil(AppRoutes.signinScreen);
              },
              child: Text(
                "SignIn",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 12.sp,
                    color: Theme.of(context).customColors.primaryColor),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
