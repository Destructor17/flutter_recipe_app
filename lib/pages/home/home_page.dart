// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recipe_app/components/article_content_view.dart';
import 'package:flutter_recipe_app/components/articles_view.dart';
import 'package:flutter_recipe_app/components/square_loading_indicator.dart';
import 'package:flutter_recipe_app/models/article_model.dart';
import 'package:flutter_recipe_app/pages/home/bloc/home_bloc.dart';
import 'package:flutter_recipe_app/uikit/uikit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  HomeBloc bloc = HomeBloc();

  int? currentIndex;

  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    bloc.add(HomeEventChangeArticle(article: exampleArticles[0]));
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scrollController.animateTo(
            0,
            duration: Duration(milliseconds: 300),
            curve: Curves.decelerate,
          );
        },
        backgroundColor: theme.colorScheme.accent,
        child: const Icon(Icons.keyboard_arrow_up),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: ListView(
            controller: scrollController,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Articles',
                      style: TextStyle(
                          fontSize: 22, color: theme.colorScheme.text),
                    ),
                    SvgPicture.asset('assets/svg/icon-nav.svg'),
                  ],
                ),
              ),
              ArticlesView(
                articles: exampleArticles,
                onSwipe: (articleIndex) {
                  if (currentIndex == articleIndex) {
                    return;
                  }
                  bloc.add(HomeEvent.changeArticle(
                    article: exampleArticles[articleIndex],
                  ));
                  currentIndex = articleIndex;
                },
                key: const PageStorageKey<String>('ArticlesView'),
              ),
              SizedBox(height: 16),
              BlocBuilder(
                bloc: bloc,
                builder: (context, state) {
                  if (state is HomeStateLoaded) {
                    return ArticleContentView(content: state.content);
                  }
                  return const Column(
                    children: [
                      SizedBox(height: 16),
                      Center(
                        child: SquareLoadingIndicator(),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
