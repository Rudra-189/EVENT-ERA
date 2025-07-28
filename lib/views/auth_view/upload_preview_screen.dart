import 'package:eventera/core/generated/assets.gen.dart';
import 'package:eventera/core/utils/app_exports.dart';
import 'package:eventera/core/utils/navigator_service.dart';
import 'package:eventera/viewmodels/bloc/auth_bloc.dart';
import 'package:eventera/widgets/common_widget/custom_button.dart';
import 'package:eventera/widgets/common_widget/image_view.dart';

class UploadPreviewScreen extends StatelessWidget {
  static Widget builder(BuildContext context) => const UploadPreviewScreen();
  const UploadPreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).customColors.backGroundColor,
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSizedBoxH(50.h),
                _buildHeaderText(context),
                buildSizedBoxH(5.h),
                _buildMessageText(context),
                buildSizedBoxH(50.h),
                _buildProfileImage(context, state),
                Expanded(child: SizedBox()),
                CustomElevatedButton(
                  text: "NEXT",
                  onPressed: () {
                    NavigatorService.pushAndRemoveUntil(AppRoutes.homeScreen);
                  },
                ),
                buildSizedBoxH(15.h),
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget _buildHeaderText(BuildContext context) {
  return RichText(
    textAlign: TextAlign.start,
    text: TextSpan(
      children: [
        TextSpan(
            text: 'Preview Your Profile\n',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 28.sp,
                color: Theme.of(context).customColors.textdarkcolor,
                fontWeight: FontWeight.bold)),
        TextSpan(
            text: 'Photo',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 28.sp,
                color: Theme.of(context).customColors.textdarkcolor,
                fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

Widget _buildMessageText(BuildContext context) {
  return RichText(
    textAlign: TextAlign.start,
    text: TextSpan(
      children: [
        TextSpan(
            text: 'This data will be displayed in your account\n',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 12.sp,
                  color: Theme.of(context).customColors.textdarkcolor,
                )),
        TextSpan(
            text: 'profile for security',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 12.sp,
                  color: Theme.of(context).customColors.textdarkcolor,
                )),
      ],
    ),
  );
}

Widget _buildProfileImage(BuildContext context, AuthState state) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 200.h,
        width: 200.w,
        decoration: BoxDecoration(
          color: Theme.of(context).customColors.fillBackGroung,
          borderRadius: BorderRadius.circular(15.r),
        ),
        alignment: Alignment.center,
        child: state.image == null
            ? CustomImageView(
                imagePath: Assets.images.svgs.icons.icProfile.path,
              )
            : CustomImageView(
                imagePath: state.image?.path,
                height: 200.h,
                width: 200.w,
                radius: BorderRadius.circular(15.r),
              ),
      ),
    ],
  );
}
