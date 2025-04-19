import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class ResetPasswordState {}

class ResetPasswordInitial extends ResetPasswordState {}

class LoadingResetPassword extends ResetPasswordState {}

class SuccessResetPassword extends ResetPasswordState {}

class ErrorResetPassword extends ResetPasswordState {}

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super(ResetPasswordInitial());

  static ResetPasswordCubit get(context) => BlocProvider.of(context);

  Future<void> resetPassword({
    required String email,
    required String token,
    required String newPassword,
  }) async {
    emit(LoadingResetPassword());

    try {
      final response = await http.post(
        Uri.parse("https://test.mzadcom.om/services/public/api/reset-password"),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "email": email,
          "token": token,
          "password": newPassword,
        }),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          emit(SuccessResetPassword());
        } else {
          emit(ErrorResetPassword());
        }
      } else {
        emit(ErrorResetPassword());
      }
    } catch (e) {
      emit(ErrorResetPassword());
    }
  }
}
