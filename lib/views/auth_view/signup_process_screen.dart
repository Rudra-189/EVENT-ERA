import 'package:eventera/core/generated/assets.gen.dart';
import 'package:eventera/core/utils/app_exports.dart';
import 'package:eventera/core/utils/logger.dart';
import 'package:eventera/core/utils/navigator_service.dart';
import 'package:eventera/core/utils/validator.dart';
import 'package:eventera/viewmodels/bloc/auth_bloc.dart';
import 'package:eventera/widgets/common_widget/custom_button.dart';
import 'package:eventera/widgets/common_widget/custom_textfields.dart';
import 'package:eventera/widgets/common_widget/image_view.dart';

class SignupProcessScreen extends StatelessWidget {
  static Widget builder(BuildContext context) => const SignupProcessScreen();
  const SignupProcessScreen({super.key});

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
              children: [_buildSignUpProcessForm(context, state)],
            ),
          );
        },
      ),
    );
  }
}

Widget _buildSignUpProcessForm(BuildContext context, AuthState state) {
  return Form(
    key: state.signupProcessFormKey,
    child: Column(
      children: [
        CustomTextInputField(
          hint: "full name",
          controller: state.signupFullNameController,
          prefixIcon: CustomImageView(
            imagePath: Assets.images.svgs.icons.icProfile.path,
            margin: EdgeInsets.all(15),
          ),
          onChanged: (value) => context
              .read<AuthBloc>()
              .add(OnSignupFullNameChangeEvent(fullName: value)),
          validator: (value) => Validator.validateName(value),
        ),
        buildSizedBoxH(15.h),
        CustomTextInputField(
          hint: "phone number",
          controller: state.signupPhoneController,
          prefixIcon: CustomImageView(
            imagePath: Assets.images.svgs.icons.icCall.path,
            margin: EdgeInsets.all(15),
          ),
          onChanged: (value) => context
              .read<AuthBloc>()
              .add(OnSigniupPhonehCangeEvent(phone: value)),
          validator: (value) => Validator.validatePhone(value),
        ),
        buildSizedBoxH(15.h),
        CustomTextInputField(
          hint: "DD/MM/YYYY",
          controller: state.signupDobController,
          readOnly: true,
          prefixIcon: CustomImageView(
            imagePath: Assets.images.svgs.icons.icCalender.path,
            color: const Color.fromARGB(255, 48, 134, 45),
            margin: EdgeInsets.all(15),
          ),
          validator: (value) => Validator.validateDOB(value),
          ontap: () async {
            final now = DateTime.now();
            final picked = await showDatePicker(
              context: context,
              initialDate: now.subtract(const Duration(days: 365 * 18)),
              firstDate: DateTime(1900),
              lastDate: now,
              builder: (context, child) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: ColorScheme.light(
                      primary: Theme.of(context).customColors.primaryColor ??
                          Theme.of(context).primaryColor,
                    ),
                  ),
                  child: child!,
                );
              },
            );
            Logger.lOG(picked);
            if (picked != null) {
              final formatted =
                  "${picked.year}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}";
              // ignore: use_build_context_synchronously
              context.read<AuthBloc>().add(
                    OnSigniupDobChangeEvent(dob: formatted),
                  );
            }
          },
        ),
        buildSizedBoxH(15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Genedr",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 14.sp,
                  color: Theme.of(context).customColors.textdarkcolor),
            ),
          ],
        ),
        Row(
          children: [
            _buildGenderInpute(
                context: context,
                label: 'male',
                selectedGender: state.gender,
                onChanged: (value) {
                  context
                      .read<AuthBloc>()
                      .add(OnSignupGenderChnageEvent(value!));
                }),
            _buildGenderInpute(
                context: context,
                label: 'female',
                selectedGender: state.gender,
                onChanged: (value) {
                  context
                      .read<AuthBloc>()
                      .add(OnSignupGenderChnageEvent(value!));
                }),
          ],
        ),
        buildSizedBoxH(15.h),
        CustomElevatedButton(
          text: "NEXT",
          onPressed: () {
            if (state.signupProcessFormKey.currentState?.validate() ?? false) {
              NavigatorService.pushNamed(AppRoutes.uploadProfileScreen);
            }
          },
        ),
      ],
    ),
  );
}

Widget _buildGenderInpute({
  required BuildContext context,
  required String label,
  required String? selectedGender,
  required Function(String?)? onChanged,
}) {
  return Row(
    children: [
      Radio<String>(
          value: label,
          groupValue: selectedGender,
          activeColor: Theme.of(context)
              .customColors
              .primaryColor, // Highlight selected with orange
          hoverColor: Theme.of(context).customColors.primaryColor,
          onChanged: onChanged),
      Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: 14.sp,
            color: Theme.of(context).customColors.textdarkcolor),
      ),
    ],
  );
}
