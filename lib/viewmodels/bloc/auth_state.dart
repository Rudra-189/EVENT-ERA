part of 'auth_bloc.dart';

class AuthState extends Equatable {
  final Status signinStatus;
  final Status signupStatus;
  final GlobalKey<FormState> loginFormKey;
  final GlobalKey<FormState> signupFormKey;
  final GlobalKey<FormState> signupProcessFormKey;
  final TextEditingController signinEmailController;
  final TextEditingController signinPassWordController;
  final TextEditingController signupEmailController;
  final TextEditingController signupPassWordController;
  final TextEditingController signupConfirmPassWordController;
  final TextEditingController signupNameController;
  final TextEditingController signupFullNameController;
  final TextEditingController signupPhoneController;
  final TextEditingController signupDobController;
  final File? image;
  final String? gender;
  final bool signInObscurePassword;
  final bool signUpObscurePassword;
  final bool signUpObscureConfirmPassword;

  const AuthState({
    this.signinStatus = Status.init,
    this.signupStatus = Status.init,
    required this.loginFormKey,
    required this.signupFormKey,
    required this.signupProcessFormKey,
    required this.signinEmailController,
    required this.signinPassWordController,
    required this.signupEmailController,
    required this.signupPassWordController,
    required this.signupConfirmPassWordController,
    required this.signupNameController,
    required this.signupFullNameController,
    required this.signupPhoneController,
    required this.signupDobController,
    this.image,
    this.gender,
    this.signInObscurePassword = true,
    this.signUpObscurePassword = true,
    this.signUpObscureConfirmPassword = true,
  });

  @override
  List<Object?> get props => [
        signinStatus,
        signupStatus,
        loginFormKey,
        signupFormKey,
        signupProcessFormKey,
        signinEmailController,
        signinPassWordController,
        signupEmailController,
        signupPassWordController,
        signupConfirmPassWordController,
        signupNameController,
        signupFullNameController,
        signupPhoneController,
        signupDobController,
        image,
        gender,
        signInObscurePassword,
        signUpObscurePassword,
        signUpObscureConfirmPassword,
      ];

  AuthState copyWith({
    Status? signinStatus,
    Status? signupStatus,
    GlobalKey<FormState>? loginFormKey,
    GlobalKey<FormState>? signupFormKey,
    GlobalKey<FormState>? signupProcessFormKey,
    TextEditingController? signinEmailController,
    TextEditingController? signinPassWordController,
    TextEditingController? signupEmailController,
    TextEditingController? signupPassWordController,
    TextEditingController? signupConfirmPassWordController,
    TextEditingController? signupNameController,
    TextEditingController? signupFullNameController,
    TextEditingController? signupPhoneController,
    TextEditingController? signupDobController,
    File? image,
    String? gender,
    bool? signInObscurePassword,
    bool? signUpObscurePassword,
    bool? signUpObscureConfirmPassword,
  }) {
    return AuthState(
      signinStatus: signinStatus ?? this.signinStatus,
      signupStatus: signupStatus ?? this.signupStatus,
      loginFormKey: loginFormKey ?? this.loginFormKey,
      signupFormKey: signupFormKey ?? this.signupFormKey,
      signupProcessFormKey: signupProcessFormKey ?? this.signupProcessFormKey,
      signinEmailController:
          signinEmailController ?? this.signinEmailController,
      signinPassWordController:
          signinPassWordController ?? this.signinPassWordController,
      signupEmailController:
          signupEmailController ?? this.signupEmailController,
      signupPassWordController:
          signupPassWordController ?? this.signupPassWordController,
      signupConfirmPassWordController: signupConfirmPassWordController ??
          this.signupConfirmPassWordController,
      signupNameController: signupNameController ?? this.signupNameController,
      signupFullNameController:
          signupFullNameController ?? this.signupFullNameController,
      signupPhoneController:
          signupPhoneController ?? this.signupPhoneController,
      signupDobController: signupDobController ?? this.signupDobController,
      image: image ?? this.image,
      gender: gender ?? this.gender,
      signInObscurePassword:
          signInObscurePassword ?? this.signInObscurePassword,
      signUpObscurePassword:
          signUpObscurePassword ?? this.signUpObscurePassword,
      signUpObscureConfirmPassword:
          signUpObscureConfirmPassword ?? this.signUpObscureConfirmPassword,
    );
  }
}
