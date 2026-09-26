import 'package:flutter/material.dart';
import 'package:news/core/routing/routes_name.dart';

import 'custom_container_image.dart';

class ArticlesItem extends StatelessWidget {
  const ArticlesItem({super.key, required this.image, required this.title});
 final String image;
 final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:24.0,left: 16,right: 16),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(RoutesName.details);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomContainerImage(image: image,),
            const SizedBox(height: 5,),
            Text("Europe",style: Theme.of(context).textTheme.titleSmall,),
            const SizedBox(height: 6,),
            Text(title,style: Theme.of(context).textTheme.titleMedium,overflow: .ellipsis,maxLines: 1,),

          ],
        ),
      ),
    );
  }
}
