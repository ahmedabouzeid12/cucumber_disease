import 'package:cucumber_disease/pages/picture_screen.dart';
import 'package:cucumber_disease/pages/search/search_screen.dart';
import 'package:flutter/material.dart';

import 'camera_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.green,),onPressed: ()
        {
          Navigator.pop(context,);
        }),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 50,
                width: 300,
                alignment: Alignment.center,
                child:Text(
                  'Welcom to Waplant' ,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(
                    color: Colors.green ,
                    width: 2.0 ,
                  ),
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              SizedBox(height: 25,),
              //Image(image: AssetImage('assets/logo home.jpg'),),
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  child: Image.asset('assets/logo home.jpg', fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 25,),
              Text(
                'Please chose the search type',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25,),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      MaterialButton(
                        color: Colors.green,

                        shape:  CircleBorder(),
                        onPressed: ()
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CameraScreen(),

                            ),

                          );
                        },
                        height: 100,
                        minWidth: 100,
                        child: Icon(Icons.qr_code_scanner_sharp ,color: Colors.white,),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'with camera',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),
                      ),
                    ],
                  ),
                  SizedBox(width: 40,),
                  Column(
                    children: [
                      MaterialButton(
                        color: Colors.green,

                        shape:  CircleBorder(),
                        onPressed: ()
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PictureScreen(),

                            ),

                          );
                        },
                        height: 100,
                        minWidth: 100,
                        child: Icon(Icons. upload,color: Colors.white,),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'add a picture',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.black,
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(300, 50), //////// HERE
                ),
                onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchScreen(),

                              ),
                           );
                       },
                child: Text(
                  'Search by text',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
