import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/uikit/uikit.dart';

class ArticleContentView extends StatelessWidget {
  const ArticleContentView({required this.content, super.key});

  final List<String> content;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: content.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          content[index],
          style: TextStyle(
            fontSize: 16,
            color: AppTheme.of(context).colorScheme.text,
          ),
        ),
      ),
    );
  }
}
