// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_recipe_app/components/articles_view.dart';
import 'package:flutter_recipe_app/models/article_model.dart';
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

  Future<void> loadContent() async {
    final fileName = currentArticle.articleName;
    final contentString =
        await rootBundle.loadString('assets/articles/$fileName.txt');
    setState(() {
      content = contentString.split('\n\n');
    });
  }

  List<Widget> contentWidgets() {
    if (content == null) {
      return [
        SizedBox(height: 16),
        CircularProgressIndicator.adaptive(),
      ];
    }
    return content!
            .map<Widget>(
              (paragraph) => Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  paragraph,
                  style: const TextStyle(
                    fontSize: 16,
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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scrollController.animateTo(
            0,
            duration: Duration(milliseconds: 300),
            curve: Curves.decelerate,
          );
        },
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
                    const Text(
                      'Articles',
                      style: TextStyle(fontSize: 22),
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
