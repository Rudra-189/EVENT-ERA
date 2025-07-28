import 'package:eventera/core/generated/assets.gen.dart';
import 'package:eventera/core/utils/app_exports.dart';
import 'package:eventera/core/utils/navigator_service.dart';
import 'package:eventera/viewmodels/bloc/auth_bloc.dart';
import 'package:eventera/widgets/common_widget/custom_button.dart';
import 'package:eventera/widgets/common_widget/image_view.dart';
import 'package:image_picker/image_picker.dart';

class UploadProfileScreen extends StatelessWidget {
  static Widget builder(BuildContext context) => const UploadProfileScreen();
  const UploadProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).customColors.backGroundColor,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSizedBoxH(50.h),
                _buildHeaderText(context),
                buildSizedBoxH(5.h),
                _buildMessageText(context),
                buildSizedBoxH(25.h),
                _buildImageUploadOptions(context),
                Expanded(child: SizedBox()),
                CustomElevatedButton(
                  text: "NEXT",
                  onPressed: () {
                    NavigatorService.pushNamed(AppRoutes.uploadPreviewScreen);
                  },
                ),
                buildSizedBoxH(10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SKIP",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).customColors.primaryColor,
                          fontSize: 13.sp,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                buildSizedBoxH(10.h),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget _buildImageUploadOptions(BuildContext context) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          context
              .read<AuthBloc>()
              .add(OnSignupProfileImagePick(ImageSource.gallery));
        },
        child: Container(
          height: 135.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).customColors.fillBackGroung,
            borderRadius: BorderRadius.circular(15.r),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: Assets.images.pngs.icons.icGallery.path,
                height: 50.h,
                width: 50.w,
              ),
              buildSizedBoxH(1.h),
              Text(
                "From Gallery",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).customColors.textdarkcolor),
              ),
            ],
          ),
        ),
      ),
      buildSizedBoxH(15.h),
      GestureDetector(
        onTap: () {
          context
              .read<AuthBloc>()
              .add(OnSignupProfileImagePick(ImageSource.camera));
        },
        child: Container(
          height: 135.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).customColors.fillBackGroung,
            borderRadius: BorderRadius.circular(15.r),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: Assets.images.pngs.icons.icCamera.path,
                height: 50.h,
                width: 50.w,
              ),
              buildSizedBoxH(1.h),
              Text(
                "From Photo",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).customColors.textdarkcolor),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget _buildHeaderText(BuildContext context) {
  return RichText(
    textAlign: TextAlign.start,
    text: TextSpan(
      children: [
        TextSpan(
            text: 'Upload Your Profile\n',
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
