
import 'package:cucumber_disease/pages/search/cubit/state.dart';
import 'package:cucumber_disease/pages/search/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchStates> {

  SearchCubit() : super(SearchInitialState(),);

  static SearchCubit get(context) => BlocProvider.of(context);

  List<dynamic> search = [];

  void getSearch(String value) {
    emit(SearchLoadingState());

    // search = [];
    DioHelper.getData(
      url: 'v2/everything',
      query: {
        'q': '$value',
        'apiKey': 'b4a9c8b128934dd8a0a19fb2ac5be1ab',
      },
      token: 'b4a9c8b128934dd8a0a19fb2ac5be1ab',
    ).then((value) {
      print('hello2');
      // print(value.data['articles'][0]['title']);
      search = value.data['articles'];
      print(search[0]['title']);
      emit(SearchSuccessState());

    }).catchError((erorr) {
      print(erorr.toString());
      emit(SearchErrorState(erorr.toString()));
    });
  }
}
