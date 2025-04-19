import 'dart:convert';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(contex) => BlocProvider.of(contex);

  List activeAuctions = [];
  List previousAuctions = [];
  List upcomingAuctions = [];
  List directAuctions = [];

  int totalActive = 0;
  int totalUpcoming = 0;
  int totalPrevious = 0;
  int totalFeatured = 0;
  int totalDirect = 0;

  // get totale of Auction in evry type
  Future<void> getTotaleOfAuctions() async {
    emit(LoadingTotaleAuctinsState());
    try {
      final response = await http.get(Uri.parse(
          "https://test.mzadcom.om/services/public/api/auctions_chart_data/main"));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);

        if (data.containsKey("data") && data["data"] is Map<String, dynamic>) {
          final auctionsData = data["data"] as Map<String, dynamic>;

          totalActive = auctionsData["active"] ?? 0;
          totalUpcoming = auctionsData["upcoming"] ?? 0;
          totalPrevious = auctionsData["previous"] ?? 0;
          totalFeatured = auctionsData["featured"] ?? 0;
          totalDirect = auctionsData["direct"] ?? 0;

          emit(SuccessTotaleAuctinsState());
        } else {
          emit(FailTotaleAuctionsState());
        }
      } else {
        emit(FailTotaleAuctionsState());
      }
    } catch (e) {
      log("خطأ أثناء جلب البيانات: $e");
      emit(FailTotaleAuctionsState());
    }
  }

  // // Get active auction data from the API
  void getActive() async {
    emit(LoadingActiveState());
    try {
      final response = await http.get(Uri.parse(
          "https://test.mzadcom.om/services/public/api/active_categories?undefined"));
      var body = response.body;
      var data = jsonDecode(body) as Map<String, dynamic>;
      activeAuctions = data["data"] as List;
      if (response.statusCode == 200) {
        emit(SuccessActiveState());
      } else {
        emit(FailActiveState());
      }
    } catch (e) {
      emit(FailActiveState());
    }
  }

// // //Get Previous data from the API
  void getPrevious() async {
    emit(LoadingPreviousState());
    try {
      final response = await http.get(Uri.parse(
          "https://www.mzadcom.om/services/public/api/active/auctions"));

      if (response.statusCode == 200) {
        var body = response.body;
        var data = jsonDecode(body) as Map<String, dynamic>;

        if (data.containsKey('data') && data['data'] != null) {
          activeAuctions = data["data"] as List;
          for (var auction in activeAuctions) {
            var categoryName = auction["category_name_ar"];

            if (categoryName == null) {
              auction["category_name_ar"] = "غير محدد";
            }
          }

          emit(SuccessPreviousState());
        }
      } else {
        emit(FailPreviousState());
      }
    } catch (e) {
      emit(FailPreviousState());
    }
  }

  void getUpcoming() async {
    emit(LoadingPreviousState());
    try {
      final response = await http.get(Uri.parse(
          "https://www.mzadcom.om/services/public/api/upcoming/auctions"));

      if (response.statusCode == 200) {
        var body = response.body;
        var data = jsonDecode(body) as Map<String, dynamic>;

        if (data.containsKey('data') && data['data'] != null) {
          upcomingAuctions = data["data"] as List;
          for (var auction in upcomingAuctions) {
            var categoryName = auction["category_name_ar"];

            if (categoryName == null) {
              auction["category_name_ar"] = "غير محدد";
            }
          }

          emit(SuccessPreviousState());
        }
      } else {
        emit(FailPreviousState());
      }
    } catch (e) {
      emit(FailPreviousState());
    }
  }

  void getDirect() async {
    emit(LoadingPreviousState());
    try {
      final response = await http.get(Uri.parse(
          "https://www.mzadcom.om/services/public/api/direct/auctions"));

      if (response.statusCode == 200) {
        var body = response.body;
        var data = jsonDecode(body) as Map<String, dynamic>;

        if (data.containsKey('data') && data['data'] != null) {
          directAuctions = data["data"] as List;
          for (var auction in directAuctions) {
            var categoryName = auction["category_name_ar"];

            if (categoryName == null) {
              auction["category_name_ar"] = "غير محدد";
            }
          }

          emit(SuccessPreviousState());
        }
      } else {
        emit(FailPreviousState());
      }
    } catch (e) {
      emit(FailPreviousState());
    }
  }
}
