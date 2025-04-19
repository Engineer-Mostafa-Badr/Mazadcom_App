part of 'reset_password_cubit.dart';

sealed class ResetPasswordState {}

final class ResetPasswordInitial extends ResetPasswordState {}
 class LoadingResetPassword extends ResetPasswordState{}
 class SuccessResetPassword extends ResetPasswordState{}
 class ErrorResetPassword extends ResetPasswordState{}
