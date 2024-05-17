import 'package:flutter/material.dart';
import 'package:flutter_application_34/details_screen.dart';
import 'package:flutter_application_34/model_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List _photo = [
    Model(
      image: 'assets/rain.jpg',title: 'mood'
    ),
    Model(image: 'assets/winter.jpg',title: 'Asthetic')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('data'),),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        itemCount: _photo.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
        itemBuilder: (context, index) {
          
          return GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailsScreen( model: _photo[index]))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: AssetImage(_photo[index].image),
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
                        ),//BoxShadow
                        
                      ],

                  ),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.all(8)),
                      Text(_photo[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20
                      ),),
                    ],
                  ),
                ),
                
                
              ],
            ),
          );
        },
      ),
    );
  }
}
