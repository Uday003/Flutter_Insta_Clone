import 'package:deadshot/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
 static final String id='signup_screen';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              SizedBox(height:20.0),
              Text(
                'Instagram',
                style:TextStyle(
                  color:Colors.black,
                  fontFamily: 'Billabong',
                  fontSize: 75.0,
                  letterSpacing: 2.0,
                   ),
              ),
                  
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:50.0,vertical: 0.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Name',
                        )     
                      ),
                    ),
                  ],
                ),
              ),
              
               Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:50.0,vertical: 0.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Email',
                        )     
                      ),
                    ),
                  ],
                ),
              ),
              
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:50.0,vertical: 0.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Password',
                        )     
                      ),
                    ),
                  ],
                ),
              ),
              
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:50.0,vertical: 0.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Confirm Password',
                        )     
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:20,),
              Container(
                width: 250.0,
                color: Colors.blueAccent[700],
                child: OutlinedButton(
                  onPressed: (){},
                  child: Text(
                    'Sign up',
                    style:TextStyle(
                      color: Colors.white,
                      ) ,
                  ),
                  ),
              ),
              SizedBox(height:10,),
              Container(
                width: 250.0,
                color: Colors.blueAccent[700],
                child: OutlinedButton(
                  onPressed: (){
                    Navigator.pushNamed(context , LoginScreen.id );
                  },
                  child: Text(
                    'Back to Login',
                    style:TextStyle(
                      color: Colors.white,
                      ) ,
                  ),
                  ),
              ),

              ],

            

          ),
        ),
      );
  }
}