import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'bank_transfer_state.dart';

class BankTransferCubit extends Cubit<BankTransferState> {
  BankTransferCubit() : super(BankTransferInitial());
  static BankTransferCubit get(context) => BlocProvider.of(context);
  File? uploadedFileforBankTransfer;

  Future<void> submitBankTransfer(String addfundsbanktransfer, String bankname,
      String banknumber, String beneficiaryname) async {
    emit(LoadingBankTransferState());
    const String apiUrl = " ";
    try {
      var request = http.MultipartRequest("POST", Uri.parse(apiUrl));
      request.fields["addfundsbanktransfer"] = addfundsbanktransfer;
      request.fields["bankname"] = bankname;
      request.fields["banknumber"] = banknumber;
      request.fields["beneficiaryname"] = beneficiaryname;
      log(request.fields.toString());
      if (uploadedFileforBankTransfer != null) {
        request.files.add(await http.MultipartFile.fromPath(
            'file', uploadedFileforBankTransfer!.path));
      }
      var reposnse = await request.send();
      log("response");
      final respStr = await reposnse.stream.bytesToString();
      log(respStr);

      if (reposnse.statusCode == 200) {
        emit(SuccessBankTransferState());
      } else {
        emit(FailBankTransferState());
      }
    } catch (e) {
      emit(FailBankTransferState());
    }
  }
}
