import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzadcom/authentication/login/cubit/login_state.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login(String username, String password) async {
    emit(LoginLoading());
    final url = Uri.parse('https://test.mzadcom.om/services/public/api/login');

    try {
      final response = await http.post(url, body: {
        'username': username,
        'password': password,
      });

      if (response.statusCode.toString().startsWith('2')) {
        final responseData = json.decode(response.body);
        print(responseData);
        if (responseData['success'] == true) {
          String token = responseData['data']['token'];
          print(token);
          // حفظ التوكن في SharedPreferences
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('authToken', token);

          emit(LoginSuccess());
        } else {
          print(responseData);
          emit(LoginFailure(
              responseData['message'] ?? 'بيانات الدخول غير صحيحة'));
        }
      } else {
        print(response.body);
        emit(LoginFailure('حدث خطأ أثناء الاتصال بالسيرفر'));
      }
    } catch (e) {
      print(e);
      emit(LoginFailure('تأكد من الاتصال بالإنترنت وحاول مرة أخرى'));
    }
  }
}
