import 'dart:convert';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  static SearchCubit get(contex) => BlocProvider.of(contex);

  List<String> allAuctionName = [];
  final String apiUrl =
      "https://www.mzadcom.om/services/public/api/all_auctions";

  void getAllAuctions() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        var body = response.body;
        List<dynamic> data = jsonDecode(body) as List;
        allAuctionName = data.map((name) => name.toString()).toList();
      }
    } catch (e) {
      log(e.toString());
    }
  }

  void filterNames(String query) {
    if (query.isEmpty) {
      emit(SearchLoaded(allAuctionName));
    } else {
      List<String> results =
          allAuctionName.where((name) => name.contains(query)).toList();
      results.isEmpty ? emit(SearchEmpty()) : emit(SearchLoaded(results));
    }
  }
}
