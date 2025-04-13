part of 'bank_transfer_cubit.dart';

@immutable
sealed class BankTransferState {}

final class BankTransferInitial extends BankTransferState {}
class SuccessBankTransferState extends BankTransferState{}
class LoadingBankTransferState extends BankTransferState{}
class FailBankTransferState extends BankTransferState{}