part of 'individual_register_cubit.dart';

@immutable
sealed class IndividualRegisterState {}

final class IndividualRegisterInitial extends IndividualRegisterState {}

class LoadingIndividualRegisterState extends IndividualRegisterState {}
 class SuccessIndividualRegisterState extends IndividualRegisterState{}
 class FailIndividualRegisterState extends IndividualRegisterState{}
 
