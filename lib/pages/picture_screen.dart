import 'package:flutter/material.dart';

class PictureScreen extends StatelessWidget {
  const PictureScreen({Key? key}) : super(key: key);

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Picture Screen'),
          ],
        ),
      ),
    );
  }
}
