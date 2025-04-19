import 'package:mzadcom/features/splash/cubit/splash_cubit_state.dart';
import 'package:bloc/bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial()) {
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    emit(SplashLoaded());
  }
}
