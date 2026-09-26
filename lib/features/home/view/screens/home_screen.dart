import 'package:flutter/material.dart';

import '../widgets/articles_list_view_builder.dart';
import '../widgets/custom_container_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('News App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: ArticlesListViewBuilder())

        ],
      ),

    );
  }
}
