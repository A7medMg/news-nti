import 'package:flutter/material.dart';
import 'package:news/features/home/domain/entities/news_model_entity.dart';

import '../widgets/custom_container_image.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.article});
final ArticlesEntity article;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainerImage(image: article.urlToImage,height: 250,),
              const SizedBox(height: 15,),
              Text(article.title,style: Theme.of(context).textTheme.titleMedium,),
              const SizedBox(height: 15,),
              Text(article.description,style: Theme.of(context).textTheme.titleMedium,),
          
            ],
          
          ),
        ),
      )


    );
  }
}
