import 'package:equatable/equatable.dart';
import 'package:eventera/core/utils/app_exports.dart';
import 'package:eventera/core/utils/image_picker_utils.dart';
import 'package:eventera/core/utils/logger.dart';
import 'package:eventera/core/utils/navigator_service.dart';
import 'package:eventera/core/utils/status.dart';
import 'package:eventera/repository/auth_repository.dart';
import 'package:image_picker/image_picker.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository)
      : super(AuthState(
          loginFormKey: GlobalKey<FormState>(),
          signupFormKey: GlobalKey<FormState>(),
          signupProcessFormKey: GlobalKey<FormState>(),
          signinEmailController: TextEditingController(),
          signinPassWordController: TextEditingController(),
          signupEmailController: TextEditingController(),
          signupPassWordController: TextEditingController(),
          signupConfirmPassWordController: TextEditingController(),
          signupNameController: TextEditingController(),
          signupFullNameController: TextEditingController(),
          signupPhoneController: TextEditingController(),
          signupDobController: TextEditingController(),
        )) {
    on<SplashEvent>(_onSplashEvent);
    on<SignInSubbmitEvent>(_onSignInSubbmitEvent);
    on<SignUpSubbmitEvent>(_onSignUpSubbmitEvent);
    on<OnSigninEmailChangeEvent>(_onSigninEmailChanged);
    on<OnSigninPasswordChangeEvent>(_onSigninPasswordChanged);
    on<OnSignupEmailChangeEvent>(_onSignupEmailChanged);
    on<OnSignupNameChangeEvent>(_onSignupNameChanged);
    on<OnSigniupPasswordChangeEvent>(_onSignupPasswordChanged);
    on<OnSigniupConfirmPasswordChangeEvent>(_onSignupConfirmPasswordChanged);
    on<OnSigniupPhonehCangeEvent>(_onSignupPhoneChanged);
    on<ToggleSignInPasswordEvent>(_onToggleSignInPassword);
    on<ToggleSignUpPasswordEvent>(_onToggleSignUpPassword);
    on<ToggleSignUpConfirmPasswordEvent>(_onToggleSignUpConfirmPassword);
    on<OnSignupFullNameChangeEvent>(_onOnSignupFullNameChangeEvent);
    on<OnSigniupDobChangeEvent>(_onOnSigniupDobChangeEvent);
    on<OnSignupGenderChnageEvent>(_onOnSignupGenderChnageEvent);
    on<OnSignupProfileImagePick>(_onOnSignupProfileImagePick);
  }

  void _onSignInSubbmitEvent(
      SignInSubbmitEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(signinStatus: Status.loading));
    final Map<String, dynamic> data = {
      "email": state.signinEmailController.text,
      "password": state.signinPassWordController.text
    };
    final result = await authRepository.signInUser(data: data);

    if (result.status == true) {
      Logger.lOG(result);
      emit(state.copyWith(signinStatus: Status.success));
      NavigatorService.pushNamed(AppRoutes.homeScreen);
    }
  }

  void _onSignUpSubbmitEvent(
      SignUpSubbmitEvent event, Emitter<AuthState> emit) {}

  void _onSplashEvent(SplashEvent event, Emitter<AuthState> emit) async {
    await Future.delayed(Duration(seconds: 3));
    Logger.lOG("thisis call");
    NavigatorService.pushAndRemoveUntil(AppRoutes.signinScreen);
  }

  void _onToggleSignInPassword(
      ToggleSignInPasswordEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(signInObscurePassword: !state.signInObscurePassword));
  }

  void _onToggleSignUpPassword(
      ToggleSignUpPasswordEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(signUpObscurePassword: !state.signUpObscurePassword));
  }

  void _onToggleSignUpConfirmPassword(
      ToggleSignUpConfirmPasswordEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(
        signUpObscureConfirmPassword: !state.signUpObscureConfirmPassword));
  }

  void _onSigninEmailChanged(
      OnSigninEmailChangeEvent event, Emitter<AuthState> emit) {
    state.signinEmailController.text = event.email;
    emit(state.copyWith(signinEmailController: state.signinEmailController));
  }

  void _onSigninPasswordChanged(
      OnSigninPasswordChangeEvent event, Emitter<AuthState> emit) {
    state.signinPassWordController.text = event.password;
    emit(state.copyWith(
        signinPassWordController: state.signinPassWordController));
  }

  void _onSignupEmailChanged(
      OnSignupEmailChangeEvent event, Emitter<AuthState> emit) {
    state.signupEmailController.text = event.email;
    emit(state.copyWith(signupEmailController: state.signupEmailController));
  }

  void _onSignupNameChanged(
      OnSignupNameChangeEvent event, Emitter<AuthState> emit) {
    state.signupNameController.text = event.name;
    emit(state.copyWith(signupNameController: state.signupNameController));
  }

  void _onSignupPasswordChanged(
      OnSigniupPasswordChangeEvent event, Emitter<AuthState> emit) {
    state.signupPassWordController.text = event.password;
    emit(state.copyWith(
        signupPassWordController: state.signupPassWordController));
  }

  void _onSignupConfirmPasswordChanged(
      OnSigniupConfirmPasswordChangeEvent event, Emitter<AuthState> emit) {
    state.signupConfirmPassWordController.text = event.password;
    emit(state.copyWith(
        signupConfirmPassWordController:
            state.signupConfirmPassWordController));
  }

  void _onSignupPhoneChanged(
      OnSigniupPhonehCangeEvent event, Emitter<AuthState> emit) {
    state.signupPhoneController.text = event.phone;
    emit(state.copyWith(signupPhoneController: state.signupPhoneController));
  }

  void _onOnSignupFullNameChangeEvent(
      OnSignupFullNameChangeEvent event, Emitter<AuthState> emit) {
    state.signupFullNameController.text = event.fullName;
    emit(state.copyWith(
        signupFullNameController: state.signupFullNameController));
  }

  void _onOnSigniupDobChangeEvent(
      OnSigniupDobChangeEvent event, Emitter<AuthState> emit) {
    state.signupDobController.text = event.dob;
    emit(state.copyWith(signupDobController: state.signupDobController));
  }

  void _onOnSignupGenderChnageEvent(
      OnSignupGenderChnageEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(gender: event.gender));
  }

  void _onOnSignupProfileImagePick(
      OnSignupProfileImagePick event, Emitter<AuthState> emit) async {
    final File? path =
        await Imagepickerutils.pickImageFromGallery(sorce: event.source);
    if (path != null) {
      emit(state.copyWith(image: path));
    } else {
      Logger.lOG("image pick is fail");
    }
  }
}
