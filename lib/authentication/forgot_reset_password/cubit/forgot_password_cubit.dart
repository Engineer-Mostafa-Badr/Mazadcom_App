import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:mzadcom/authentication/forgot_reset_password/cubit/forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitial());

  static ForgotPasswordCubit get(context) => BlocProvider.of(context);

  Future<void> forgotPassword(String userId) async {
    emit(LoadingForgotPasswordState());
    const String apiUrl = "https://test.mzadcom.om/services/public/api/forgot_password";

    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl));

      request.fields["userId"] = userId;

      print("🔽 إرسال البيانات:");
      print(request.fields);

      var response = await request.send();

      if (response.statusCode == 200) {
        print("✅ تم إرسال البيانات بنجاح");
        
        emit(SuccessForgotPasswordState());
      } else {
        print("❌ فشل في إرسال البيانات");
        emit(ErrorForgotPasswordState(error: "فشل في إرسال البيانات"));
      }
    } catch (e) {
      print("⚠️ حدث خطأ: $e");
      emit(ErrorForgotPasswordState(error: e.toString()));
    }
  }
}
