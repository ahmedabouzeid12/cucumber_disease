import 'package:cucumber_disease/pages/home_screen.dart';
import 'package:cucumber_disease/pages/regster_screen.dart';
import 'package:flutter/material.dart';

import 'forget_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool? firstValue = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 50,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  child: Image.asset('assets/cucumber.jpg', fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Welcome to Waplant',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30 ,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(
                      Icons.email_outlined
                  ),

                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15,),
              TextFormField(
                obscureText: true ,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock_outline,
                  ),

                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              Row (
                children: [
                  Checkbox(
                      value: firstValue,  onChanged: (val){
                          setState(() {
                           firstValue = val;
                           });
                        },
                      checkColor: Colors.white,
                      activeColor: Colors.green,

                  ),
                  Text('Remember Password' , style: TextStyle(color: Colors.grey,),),
                  SizedBox(width: 40,),
                  TextButton(child:
                  Text('Forget password?' , style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgetPasswordScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20,),
              MaterialButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                height: 50.0,
                minWidth: 300,
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
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
