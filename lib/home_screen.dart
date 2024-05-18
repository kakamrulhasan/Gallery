import 'package:flutter/material.dart';
import 'package:flutter_application_34/details_screen.dart';
import 'package:flutter_application_34/model_list.dart';

class HomeScreen extends StatelessWidget {
  
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_outlined),
        color: Colors.white,),
        actions: [
          IconButton(onPressed: (){}, icon:Image.asset('assets/kebab.png',
          color: Colors.white,),
          )
        ],
        title: Text('Photo Gallery',
        style: TextStyle(
          color: Colors.white
        ),),
        
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        itemCount: photolist.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
        itemBuilder: (context, index) {
          Model _photo = photolist[index];
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsScreen(model: _photo))),
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
    );
  }
}
