import 'package:flutter_application_1/feature/data/local_remote.dart';
import 'package:flutter_application_1/feature/data/text_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_page_cubit.freezed.dart';

class MainPageCubit extends Cubit<MainPageState> {
  final LocalRemote _localRemote = LocalRemote();
  MainPageCubit() : super(const MainPageState.initialState());

  Future<void> getText() async {
    emit(const MainPageState.loadingState());
    final response = await _localRemote.getText();
    response.fold((l) => emit(MainPageState.errorState(message: l.toString())),
        (r) {
      emit(MainPageState.loadedState(text: r));
    });
  }
}

@freezed
class MainPageState with _$MainPageState {
  const factory MainPageState.initialState() = _InitialPage;

  const factory MainPageState.loadingState() = _LoadingState;

  const factory MainPageState.loadedState({
    required TextDTO text,
  }) = _LoadedState;

  const factory MainPageState.errorState({
    required String message,
  }) = _ErrorState;
}
