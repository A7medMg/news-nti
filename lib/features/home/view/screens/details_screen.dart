import 'package:flutter/material.dart';

import '../widgets/custom_container_image.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
      ),
      body:  Padding(

        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainerImage(image: imageUrl,height: 250,),
              const SizedBox(height: 15,),
              Text("Ukraine's President Zelensky to BBC: Blood money being paid for Russian oil",style: Theme.of(context).textTheme.titleMedium,),
              const SizedBox(height: 15,),
              Text("Ukrainian President Volodymyr Zelensky has accused European countries that continue to buy Russian oil of earning their money in other people's blood.In an interview with the BBC, President Zelensky singled out Germany and Hungary, accusing them of blocking efforts to embargo energy sales, from which Russia stands to make up to £250bn (326bn) this year.There has been a growing frustration among Ukraine's leadership with Berlin, which has backed some sanctions against Russia but so far resisted calls to back tougher action on oil sales.",style: Theme.of(context).textTheme.titleMedium,),
          
            ],
          
          ),
        ),
      )


    );
  }
}
