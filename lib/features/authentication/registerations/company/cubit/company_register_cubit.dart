import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

part 'company_register_state.dart';

class CompanyRegisterCubit extends Cubit<CompanyRegisterState> {
  CompanyRegisterCubit() : super(CompanyRegisterInitial());

  static CompanyRegisterCubit get(context) => BlocProvider.of(context);

  File? fileIdNumber;
  File? fileAuthLetter;
  File? fileCrNumber;
  File? fileVatCertificate;

  Future<void> submitForm(
    String companyName,
    String countryCode,
    String mobile,
    String email,
    String username,
    String password,
    String confirmPassword,
    String residentCardNumber,
    String accountNumber,
    String bank,
    String authorityName,
    String crNumber,
    String vatNumber,
    int isCompany,
  ) async {
    emit(LoadingCompanyRegisterState());

    const apiUrl = "https://test.mzadcom.om/services/public/api/register";

    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl));

      request.fields["name"] = companyName;
      request.fields["country_code"] = countryCode;
      request.fields["mobile"] = mobile;
      request.fields["email"] = email;
      request.fields["username"] = username;
      request.fields["password"] = password;
      request.fields["confirm_password"] = confirmPassword;
      request.fields["resident_card_number"] = residentCardNumber;
      request.fields["account_number"] = accountNumber;
      request.fields["bank"] = bank;
      request.fields["authority_name"] = authorityName;
      request.fields["cr_number"] = crNumber;
      request.fields["vat_number"] = vatNumber;
      request.fields['is_company'] = isCompany.toString();

      if (fileIdNumber != null) {
        request.files.add(await http.MultipartFile.fromPath(
            'file_id_number', fileIdNumber!.path));
      }
      if (fileAuthLetter != null) {
        request.files.add(await http.MultipartFile.fromPath(
            'file_auth_letter', fileAuthLetter!.path));
      }
      if (fileCrNumber != null) {
        request.files.add(await http.MultipartFile.fromPath(
            'file_cr_number', fileCrNumber!.path));
      }
      if (fileVatCertificate != null) {
        request.files.add(await http.MultipartFile.fromPath(
            'file_vat_certificate', fileVatCertificate!.path));
      }

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

          emit(SuccessCompanyRegisterState());
        } else {
          log('Registration Failed: ${responseData['message']}');
          emit(FailerCompanyRegisterState());
        }
      } else {
        log('Server Error: ${response.statusCode}');
        emit(FailerCompanyRegisterState());
      }
    } catch (e) {
      log('Exception: $e');
      emit(FailerCompanyRegisterState());
    }
  }
}
