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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(model.image), fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                    ],
                  ),
                  height: 330,
                  width: 360,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Mood With Nature',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                    'Nature, a tapestry of vibrant life,serene landscapes,\n and delicate ecosystems, offers beauty and balance')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'See More',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(370, 40),
                    shadowColor: Colors.black,
                    elevation: 16,
                    backgroundColor: Colors.green[600],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Suggestion',
                  style: TextStyle(
                      color: Colors.green[300],
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ],
            ),
            Row(
              children: [
               
                ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildcard() => Container(
        width: 100,
        height: 100,
        color: Colors.red,
      );
}
