import 'package:flutter/cupertino.dart';

import 'articles_item.dart';
import 'custom_container_image.dart';

class ArticlesListViewBuilder extends StatelessWidget {
  const ArticlesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 12,
        itemBuilder: (context,index)=>ArticlesItem(image: imageUrl, title: 'Russian warship: Moskva sinks in Black Sea',));
  }
}
