import 'package:cucumber_disease/pages/login_screen.dart';
import 'package:flutter/material.dart';

import 'check_your_email_screen.dart';
import 'regster_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
              SizedBox(height: 50,),
              Container(
                alignment: Alignment.topCenter,
                child: Image(
                  image: AssetImage('assets/message.png'),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text(
                  'Fill your email and we will sent you a link to change your password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22 ,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 40,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(
                      Icons.email_outlined
                  ),

                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 60,),
              MaterialButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckYourEmailScreen(),
                    ),
                  );
                },
                height: 50.0,
                minWidth: 400,
                child: Text(
                  'Get Your New Password',
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
                  Text('Regster Now' , style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegsterScreen(),
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
