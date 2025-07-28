import 'package:eventera/core/generated/assets.gen.dart';
import 'package:eventera/core/utils/app_exports.dart';
import 'package:eventera/core/utils/navigator_service.dart';
import 'package:eventera/core/utils/validator.dart';
import 'package:eventera/viewmodels/bloc/auth_bloc.dart';
import 'package:eventera/widgets/common_widget/custom_button.dart';
import 'package:eventera/widgets/common_widget/custom_textfields.dart';
import 'package:eventera/widgets/common_widget/image_view.dart';

class SigninScreen extends StatelessWidget {
  static Widget builder(BuildContext context) => const SigninScreen();

  const SigninScreen({super.key});

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
              children: [_buildSignInForm(context, state)],
            ),
          );
        },
      ),
    );
  }
}

Widget _buildSignInForm(BuildContext context, AuthState state) {
  return Form(
    key: state.loginFormKey,
    child: Column(
      children: [
        CustomTextInputField(
          hint: "email",
          controller: state.signinEmailController,
          prefixIcon: CustomImageView(
            imagePath: Assets.images.svgs.icons.icEmail.path,
            margin: EdgeInsets.all(15),
          ),
          onChanged: (value) => context
              .read<AuthBloc>()
              .add(OnSigninEmailChangeEvent(email: value)),
          validator: (value) => Validator.validateEmail(value),
        ),
        buildSizedBoxH(15.h),
        CustomTextInputField(
          hint: "password",
          controller: state.signinPassWordController,
          prefixIcon: CustomImageView(
            imagePath: Assets.images.svgs.icons.icLock.path,
            margin: EdgeInsets.all(15),
          ),
          onChanged: (value) => context
              .read<AuthBloc>()
              .add(OnSigninPasswordChangeEvent(password: value)),
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
          text: "LOGIN",
          onPressed: () => {
            if (state.loginFormKey.currentState?.validate() ?? false)
              {context.read<AuthBloc>().add(SignInSubbmitEvent())}
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
                NavigatorService.pushAndRemoveUntil(AppRoutes.signiupScreen);
              },
              child: Text(
                "Signup",
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
