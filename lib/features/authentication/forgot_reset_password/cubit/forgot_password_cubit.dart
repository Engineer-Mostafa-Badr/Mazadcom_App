import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'forgot_password_state.dart';
import 'dart:developer';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitial());

  static ForgotPasswordCubit get(context) => BlocProvider.of(context);

  Future<void> forgotPassword(String userId) async {
    emit(LoadingForgotPasswordState());
    const String apiUrl =
        "https://test.mzadcom.om/services/public/api/forgot_password";

    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl));

      request.fields["userId"] = userId;

      log("🔽 إرسال البيانات:");
      log(request.fields.toString());

      var response = await request.send();

      if (response.statusCode == 200) {
        log("✅ تم إرسال البيانات بنجاح");

        emit(SuccessForgotPasswordState());
      } else {
        log("❌ فشل في إرسال البيانات");
        emit(ErrorForgotPasswordState(error: "فشل في إرسال البيانات"));
      }
    } catch (e) {
      log("⚠️ حدث خطأ: $e");
      emit(ErrorForgotPasswordState(error: e.toString()));
    }
  }
}
