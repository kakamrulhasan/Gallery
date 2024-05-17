import 'package:flutter/material.dart';
import 'package:flutter_application_34/model_list.dart';

class DetailsScreen extends StatelessWidget {
  final Model model;
  DetailsScreen({required this.model});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(model.image,height: 120,width: 120,),
            Row(
              children: [
                Text('Mood With Nature'),
                SizedBox(height: 10,),
                Text('Nature,\n a tapestry of vibrant life,\n serene landscapes,\n and delicate ecosystems, \noffers beauty and balance')
              ],
            )
          ],
        ),
      ),
    );
  }
}
