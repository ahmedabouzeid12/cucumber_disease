import 'package:cucumber_disease/pages/login_screen.dart';
import 'package:flutter/material.dart';

import 'regster_screen.dart';

class CheckYourEmailScreen extends StatefulWidget {
  const CheckYourEmailScreen({Key? key}) : super(key: key);

  @override
  _CheckYourEmailScreenState createState() => _CheckYourEmailScreenState();
}

class _CheckYourEmailScreenState extends State<CheckYourEmailScreen> {
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.topCenter,
                child: Image(
                  image: AssetImage('assets/email.png'),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text(
                  'We sent you an email to verify your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32 ,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 170,),
              MaterialButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                height: 50.0,
                minWidth: 400,
                child: Text(
                  'Check Your Email',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?' , style: TextStyle(color: Colors.grey,),),
                  SizedBox(width:0,),
                  TextButton(child:
                  Text('Login Now' , style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
