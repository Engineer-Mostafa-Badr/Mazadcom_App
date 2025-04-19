part of 'company_register_cubit.dart';

@immutable
sealed class CompanyRegisterState {}

final class CompanyRegisterInitial extends CompanyRegisterState {
}
   class LoadingCompanyRegisterState extends CompanyRegisterState{}
   class SuccessCompanyRegisterState extends CompanyRegisterState{}
   class FailerCompanyRegisterState extends CompanyRegisterState{}
