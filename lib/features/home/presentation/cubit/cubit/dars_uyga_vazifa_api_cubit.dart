import 'package:bloc/bloc.dart';
import 'package:exam/features/auth/repositories/hw_repo_api.dart';

part 'dars_uyga_vazifa_api_state.dart';

class DarsUygaVazifaApiCubit extends Cubit<DarsUygaVazifaApiState> {
  DarsUygaVazifaApiCubit() : super(DarsUygaVazifaApiInitial());
  Future<void> getPosts() async {
    emit(loading());
    try {
      final posts = await HwRepoApi().getpost();
      emit(loaded(posts: posts));
    } catch (e) {
      emit(error(mesage: e.toString()));
    }
  }





























  

  Future<void> deletPosts( String id) async {
    emit(loading());
    try {
      await HwRepoApi().deletepost(id);

      final posts = await HwRepoApi().getpost();

      emit(loaded(posts: posts));
    } catch (e) {
      emit(error(mesage: e.toString()));
    }
  }
}
