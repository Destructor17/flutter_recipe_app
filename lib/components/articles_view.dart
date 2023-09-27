import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/components/article_view.dart';
import 'package:flutter_recipe_app/models/article_model.dart';

class ArticlesView extends StatefulWidget {
  const ArticlesView({
    required this.articles,
    required this.onSwipe,
    super.key,
  });

  final List<ArticleModel> articles;
  final Function(int articleIndex) onSwipe;

  @override
  State<StatefulWidget> createState() => ArticlesViewState();
}

class ArticlesViewState extends State<ArticlesView> {
  final PageController pageController = PageController(viewportFraction: 0.75);

  @override
  void initState() {
    pageController.addListener(() {
      widget.onSwipe(pageController.page?.round() ?? 0);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: PageView.builder(
        controller: pageController,
        itemCount: widget.articles.length,
        itemBuilder: (context, index) => ArticleView(
          article: widget.articles[index],
          key: ValueKey(widget.articles[index]),
        ),
      ),
    );
  }
}
