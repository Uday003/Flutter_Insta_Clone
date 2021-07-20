import 'package:deadshot/screens/sign_up.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
   static final String id='login_screen';
   @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              SizedBox(height:12,), 
              Text(
                'Instagram',
                style:TextStyle(
                  color:Colors.black,
                  fontFamily: 'Billabong',
                  fontSize: 75.0,
                  letterSpacing: 2.0,
                   ),
              ),
              SizedBox(height: 10.0,),
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
              SizedBox(height: 10.0,),
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
              SizedBox(height: 30.0,),
              Container(
                width: 250.0,
                color: Colors.blueAccent[700],
                child: TextButton(
                  onPressed: (){
                    //Navigator.pushNamed(context , routename )
                  },
                  child: Text(
                    'Login',
                    style:TextStyle(
                      color: Colors.white,
                      ) ,
                  ),
                  ),
              ),
              SizedBox(height: 15.0,),
              GestureDetector(
               child:Text(
                'Forgot password?',
                 style: TextStyle(
                   color: Colors.blueAccent,
                 ),
                ),
                onTap:(){},
              ),
              SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Text(
                      "Don't have an Account",
                      style: TextStyle(
                        color: Colors.black,
                      )
                    ),
                    SizedBox(width: 10.0,),
                    GestureDetector(
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize:15.0,
                        )
                      ),
                      onTap: (){
                        Navigator.pushNamed(context , SignupScreen.id );
                      },
                      ),
                ],
              )

              ],

            

          ),
        ),
      )
      ;
    
  }
}