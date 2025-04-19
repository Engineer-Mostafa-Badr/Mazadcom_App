import 'package:mzadcom/features/authentication/login/cubit/login_state.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'dart:developer';
import 'dart:convert';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login(String username, String password) async {
    emit(LoginLoading());
    final url = Uri.parse('https://www.mzadcom.om/services/public/api/login');

    try {
      final response = await http.post(url, body: {
        'username': username,
        'password': password,
      });

      if (response.statusCode.toString().startsWith('2')) {
        final responseData = json.decode(response.body);
        log(responseData);
        if (responseData['success'] == true) {
          String token = responseData['data']['token'];
          log(token);
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('authToken', token);

          emit(LoginSuccess());
        } else {
          log(responseData);
          emit(LoginFailure(
              responseData['message'] ?? 'بيانات الدخول غير صحيحة'));
        }
      } else {
        log(response.body);
        emit(LoginFailure('حدث خطأ أثناء الاتصال بالسيرفر'));
      }
    } catch (e) {
      log(e.toString());
      emit(LoginFailure('تأكد من الاتصال بالإنترنت وحاول مرة أخرى'));
    }
  }

  Future<void> logout() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove('authToken');
      emit(LoginInitial());
    } catch (e) {
      log(e.toString());
      emit(LoginFailure('حدث خطأ أثناء تسجيل الخروج'));
    }
  }
}
