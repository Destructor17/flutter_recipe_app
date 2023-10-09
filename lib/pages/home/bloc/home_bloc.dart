import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_recipe_app/models/article_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part './home_event.dart';
part './home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.init()) {
    on<HomeEventChangeArticle>(_changeArticle);
  }

  FutureOr<void> _changeArticle(
    HomeEventChangeArticle event,
    Emitter<HomeState> emit,
  ) async {
    final startState = state;
    if (startState is HomeStateLoading && startState.article == event.article) {
      return;
    }
    if (startState is HomeStateLoaded && startState.article == event.article) {
      return;
    }
    emit(HomeState.loading(article: event.article));
    final fileName = event.article.articleName;
    await Future.delayed(const Duration(seconds: 1));
    final contentString = await rootBundle.loadString(
      'assets/articles/$fileName.txt',
    );

    final endState = state;
    final content = await compute(
      (contentString) => contentString.split('\n\n'),
      contentString,
    );
    if (endState is HomeStateLoading && endState.article == event.article) {
      emit(HomeState.loaded(
        article: event.article,
        content: content,
      ));
    }
  }
}
