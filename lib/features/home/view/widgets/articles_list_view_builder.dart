import 'package:flutter/cupertino.dart';
import 'package:news/core/data/news_model.dart';

import 'articles_item.dart';
import 'custom_container_image.dart';

class ArticlesListViewBuilder extends StatelessWidget {

  const ArticlesListViewBuilder({super.key, required this.articles});
final List<Articles>articles;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context,index)=>ArticlesItem(articles:articles[index],));
  }
}
