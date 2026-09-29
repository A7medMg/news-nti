import 'package:flutter/material.dart';
import 'package:news/features/home/data/model/news_model.dart';
import 'package:news/core/routing/routes_name.dart';

import 'custom_container_image.dart';

class ArticlesItem extends StatelessWidget {
  const ArticlesItem({super.key, required this.articles, });
 final Articles articles;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:24.0,left: 16,right: 16),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(RoutesName.details,arguments: articles);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomContainerImage(image: articles.urlToImage,),
            const SizedBox(height: 5,),
            Text("Europe",style: Theme.of(context).textTheme.titleSmall,),
            const SizedBox(height: 6,),
            Text(articles.title??"",style: Theme.of(context).textTheme.titleMedium,overflow: .ellipsis,maxLines: 1,),

          ],
        ),
      ),
    );
  }
}
