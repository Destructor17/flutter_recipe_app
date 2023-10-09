part of './home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.init() = HomeStateInit;

  const factory HomeState.loading({
    required ArticleModel article,
  }) = HomeStateLoading;

  const factory HomeState.loaded({
    required ArticleModel article,
    required List<String> content,
  }) = HomeStateLoaded;
}
