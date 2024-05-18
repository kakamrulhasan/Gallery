import 'package:flutter/material.dart';
import 'package:flutter_application_34/home_screen.dart';
import 'package:flutter_application_34/model_list.dart';

class DetailsScreen extends StatefulWidget {
  final Model model;
  DetailsScreen({required this.model});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
          
          icon: Icon(Icons.arrow_back_ios_new_outlined ,),
          color: Colors.white,
        ),
        title: Text(
          widget.model.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/kebab.png',
              color: Colors.white,
            ),
          )
        ],
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
                        image: AssetImage(widget.model.image),
                        fit: BoxFit.cover),
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
                  width: 400,
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
                    minimumSize: Size(385, 40),
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
            Container(
              width: 410,
              height: 201,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(8),
                itemCount: photolist.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                itemBuilder: (context, index) {
                  Model _photo = photolist[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailsScreen(model: _photo))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(_photo.image),
                                fit: BoxFit.cover),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(padding: EdgeInsets.all(8)),
                              Text(
                                _photo.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
