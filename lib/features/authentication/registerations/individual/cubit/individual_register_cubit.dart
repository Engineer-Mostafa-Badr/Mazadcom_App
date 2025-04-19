import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

part 'individual_register_state.dart';

class IndividualRegisterCubit extends Cubit<IndividualRegisterState> {
  IndividualRegisterCubit() : super(IndividualRegisterInitial());
  static IndividualRegisterCubit get(context) => BlocProvider.of(context);
  File? uploadedFile;

  Future<void> submitForm(
    String name,
    String countryCode,
    String mobile,
    String email,
    String username,
    String password,
    String confirmPassword,
    String residentCardNumber,
    String accountNumber,
    String bankName,
    int isCompany,
  ) async {
    emit(LoadingIndividualRegisterState());
    const String apiUrl =
        'https://test.mzadcom.om/services/public/api/register';
    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl));

      // إضافة البيانات إلى الطلب
      request.fields['name'] = name;
      request.fields['country_code'] = countryCode;
      request.fields['mobile'] = mobile;
      request.fields['email'] = email;
      request.fields['username'] = username;
      request.fields['password'] = password;
      request.fields['confirm_password'] = confirmPassword;
      request.fields['resident_card_number'] = residentCardNumber;
      request.fields['account_number'] = accountNumber;
      request.fields['bank'] = bankName;
      request.fields['is_company'] = isCompany.toString();

      // إضافة الملف إذا كان موجودًا
      if (uploadedFile != null) {
        request.files.add(
          await http.MultipartFile.fromPath(
            'file_id_number',
            uploadedFile!.path,
          ),
        );
      }

      // إرسال الطلب والحصول على الاستجابة
      var response = await request.send();
      final responseString = await response.stream.bytesToString();

      // طباعة الاستجابة لفحص القيم الراجعة
      log('Response Status Code: ${response.statusCode}');
      log('Response Body: $responseString');

      if (response.statusCode.toString().startsWith('2')) {
        final responseData = json.decode(responseString);

        if (responseData['success'] == true) {
          String token = responseData['data']['token'];
          log('Received Token: $token');

          // حفظ التوكن في SharedPreferences
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('authToken', token);

          emit(SuccessIndividualRegisterState());
        } else {
          log('Registration Failed: ${responseData['message']}');
          emit(FailIndividualRegisterState());
        }
      } else {
        log('Server Error: ${response.statusCode}');
        emit(FailIndividualRegisterState());
      }
    } catch (e) {
      log('Exception: $e');
      emit(FailIndividualRegisterState());
    }
  }
}
