import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_recipe_app/models/article_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.init()) {
    on<HomeEventChangeArticle>(
      _changeArticle,
      transformer: restartable(),
    );
  }

  FutureOr<void> _changeArticle(
    HomeEventChangeArticle event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeState.loading(article: event.article));
    final fileName = event.article.articleName;
    await Future.delayed(const Duration(seconds: 1));
    final contentString = await rootBundle.loadString(
      'assets/articles/$fileName.txt',
    );
    final content = await compute(
      (contentString) => contentString.split('\n\n'),
      contentString,
    );
    emit(HomeState.loaded(
      article: event.article,
      content: content,
    ));
  }
}
