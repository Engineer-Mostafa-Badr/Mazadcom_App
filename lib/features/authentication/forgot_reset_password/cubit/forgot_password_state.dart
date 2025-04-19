
abstract class ForgotPasswordState {}

class ForgotPasswordInitial extends ForgotPasswordState {}

class LoadingForgotPasswordState extends ForgotPasswordState {}

class SuccessForgotPasswordState extends ForgotPasswordState {}

class ErrorForgotPasswordState extends ForgotPasswordState {
  final String error;
  ErrorForgotPasswordState({required this.error});
}
