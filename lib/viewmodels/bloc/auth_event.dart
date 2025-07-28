part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

//Signin events

class SplashEvent extends AuthEvent {}

class SignInSubbmitEvent extends AuthEvent {}

class SignUpSubbmitEvent extends AuthEvent {}

class ToggleSignInPasswordEvent extends AuthEvent {}

class ToggleSignUpPasswordEvent extends AuthEvent {}

class ToggleSignUpConfirmPasswordEvent extends AuthEvent {}

class OnSigninEmailChangeEvent extends AuthEvent {
  final String email;

  OnSigninEmailChangeEvent({required this.email});
}

class OnSigninPasswordChangeEvent extends AuthEvent {
  final String password;

  OnSigninPasswordChangeEvent({required this.password});
}

//Signup events

class OnSignupEmailChangeEvent extends AuthEvent {
  final String email;

  OnSignupEmailChangeEvent({required this.email});
}

class OnSignupNameChangeEvent extends AuthEvent {
  final String name;

  OnSignupNameChangeEvent({required this.name});
}

class OnSignupFullNameChangeEvent extends AuthEvent {
  final String fullName;

  OnSignupFullNameChangeEvent({required this.fullName});
}

class OnSigniupPasswordChangeEvent extends AuthEvent {
  final String password;

  OnSigniupPasswordChangeEvent({required this.password});
}

class OnSigniupConfirmPasswordChangeEvent extends AuthEvent {
  final String password;

  OnSigniupConfirmPasswordChangeEvent({required this.password});
}

class OnSigniupPhonehCangeEvent extends AuthEvent {
  final String phone;

  OnSigniupPhonehCangeEvent({required this.phone});
}

class OnSigniupDobChangeEvent extends AuthEvent {
  final String dob;

  OnSigniupDobChangeEvent({required this.dob});
}

class OnSignupGenderChnageEvent extends AuthEvent {
  final String gender;

  OnSignupGenderChnageEvent(this.gender);
}

class OnSignupProfileImagePick extends AuthEvent {
  final ImageSource source;

  OnSignupProfileImagePick(this.source);
}
