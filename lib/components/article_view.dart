// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/models/article_model.dart';
import 'package:flutter_recipe_app/uikit/uikit.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({required this.article, super.key});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                image: DecorationImage(
                  image: article.background,
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              color: AppTheme.of(context).colorScheme.accent,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
              child: Column(
                children: [
                  Text(
                    article.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    maxLines: 5,
                  ),
                  // TODO
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
