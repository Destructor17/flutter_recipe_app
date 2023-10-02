// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_recipe_app/components/articles_view.dart';
import 'package:flutter_recipe_app/components/square_loading_indicator.dart';
import 'package:flutter_recipe_app/models/article_model.dart';
import 'package:flutter_recipe_app/uikit/uikit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  ArticleModel currentArticle = exampleArticles[0];
  ScrollController scrollController = ScrollController();

  List<String>? content;

  double? loadingSeed;

  Future<void> loadContentFuture(double? loadingSeed) async {
    setState(() {
      content = null;
    });
    final fileName = currentArticle.articleName;
    await Future.delayed(Duration(seconds: 3));
    final contentString =
        await rootBundle.loadString('assets/articles/$fileName.txt');
    if (loadingSeed == this.loadingSeed) {
      // needed in case of concurrent loadContentFuture
      setState(() {
        content = contentString.split('\n\n');
      });
    }
  }

  void loadContent() {
    loadingSeed = Random().nextDouble();
    loadContentFuture(loadingSeed);
  }

  List<Widget> contentWidgets() {
    if (content == null) {
      return [
        SizedBox(height: 16),
        Center(
          child: SquareLoadingIndicator(),
        ),
      ];
    }
    return content!
            .map<Widget>(
              (paragraph) => Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  paragraph,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppTheme.of(context).colorScheme.text,
                  ),
                ),
              ),
            )
            .toList() +
        [SizedBox(height: 64)];
  }

  @override
  void initState() {
    super.initState();
    loadContent();
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
                  if (currentArticle != exampleArticles[articleIndex]) {
                    setState(() {
                      currentArticle = exampleArticles[articleIndex];
                    });
                    loadContent();
                  }
                },
                key: const PageStorageKey<String>("ArticlesView"),
              ),
              SizedBox(height: 16),
              ...contentWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}
