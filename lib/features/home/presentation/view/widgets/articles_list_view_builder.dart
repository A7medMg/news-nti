import 'package:flutter/cupertino.dart';
import 'package:news/features/home/domain/entities/news_model_entity.dart';

import 'articles_item.dart';

class ArticlesListViewBuilder extends StatelessWidget {

  const ArticlesListViewBuilder({super.key, required this.articles});
final List<ArticlesEntity>articles;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context,index)=>ArticlesItem(articles:articles[index],));
  }
}
