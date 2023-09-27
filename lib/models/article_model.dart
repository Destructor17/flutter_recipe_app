import 'package:flutter/widgets.dart';

final class ArticleModel {
  ArticleModel(
      {required this.title,
      required this.articleName,
      required this.background});
  String title;
  String articleName;
  AssetImage background;
}

final exampleArticles = [
  ArticleModel(
    title: 'Flutter на ОС Аврора',
    articleName: 'flutter',
    background: const AssetImage('assets/images/article_flutter.png'),
  ),
  ArticleModel(
    title:
        'Пользователи пожаловались на сброс настроек конфиденциальности в iOS 17',
    articleName: 'ios_permissions',
    background: const AssetImage('assets/images/ios_permissions.jpeg'),
  ),
  ArticleModel(
    title: 'Многообразие Linux-дистрибутивов',
    articleName: 'linux',
    background: const AssetImage('assets/images/article_linux.png'),
  ),
  ArticleModel(
    title: 'Подбор пароля Wi-Fi утилитой aircrack-ng',
    articleName: 'aircrack',
    background: const AssetImage('assets/images/article_aircrack.png'),
  ),
];
