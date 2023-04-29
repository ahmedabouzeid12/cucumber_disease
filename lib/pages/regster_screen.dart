import 'package:cucumber_disease/pages/login_screen.dart';
import 'package:flutter/material.dart';

class RegsterScreen extends StatefulWidget {
  const RegsterScreen({Key? key}) : super(key: key);

  @override
  _RegsterScreenState createState() => _RegsterScreenState();
}

class _RegsterScreenState extends State<RegsterScreen> {
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
              Container(
                child: Image(
                  image: AssetImage('assets/vegetables-1.png'),
                  height: 200,
                  width: 300,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Text(
                  'Let\'s Join Our Commmunity',
                  style: TextStyle(
                    fontSize: 24 ,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 15,),
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
              SizedBox(height: 15,),
              TextFormField(
                obscureText: true ,
                decoration: InputDecoration(
                  labelText: 'Re-Password',
                  prefixIcon: Icon(
                    Icons.lock_outline,
                  ),

                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15,),
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
                minWidth: 300,
                child: Text(
                  'Regster',
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
                  Text('Dont have an account?' , style: TextStyle(color: Colors.grey,),),
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
