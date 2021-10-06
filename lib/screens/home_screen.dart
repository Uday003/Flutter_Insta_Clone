import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  
  static final String id='home_screen';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        toolbarHeight: 75.0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.add_box_outlined,
          color: Colors.black,
          size: 50.0,
        ),
        title: Center(child: Text(
          'Instasec',
           style: TextStyle(
            fontFamily: 'Billabong',
            color: Colors.black,
            letterSpacing: 1.0,
            fontSize: 50.0,
            ),
        ),),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon:Icon(
              Icons.send,
              color: Colors.black,
               size: 40.0,
            )
          ),
          SizedBox(width:10.0)
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Posts(img: 'assets/balu_img1.jpg',dp:'assets/balu_dp.jpg',bio: 'Have a nice dAY',name: 'bALReDDy',),
            Posts(img: 'assets/bharat_img1.jpg',dp:'assets/bharat_dp.jpg',bio: 'hey HI',name: 'DuGlAs',),
            Posts(img: 'assets/bhasker_img1.jpg',dp:'assets/bhasker_dp.jpg',bio: 'Mowa',name: 'BuSCaR',),
            Posts(img: 'assets/prathyush_img1.jpg',dp:'assets/prathyush_dp.jpg',bio: 'Edho tedaga undhenti',name: 'PrAtHyUsHa',),
          ],
        ),
      ),







    );
  }
}

class Posts extends StatelessWidget {
  String? img,dp,name,bio;
  Posts({this.img,this.dp,this.name,this.bio});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
            children:<Widget>[
              Container(
                height: 50.0,
                child: Row(           
                  children:<Widget>[
                    CircleAvatar(
                      backgroundImage:AssetImage(
                        dp!,
                      ),
                    ),
                    SizedBox(width:20),
                    Expanded(
                      child: Text(
                        name!,
                        style: TextStyle(
                          fontSize: 15.0
                        ),
                        )
                      ),
                    Icon(
                      Icons.more_vert
                    )
                  ],
                ),
              ),
              Image(
                image: AssetImage(img!),
              ),

              Row(
                children:<Widget>[
                  Like(),
                  SizedBox(width:2),
                  Icon(
                    Icons.chat_bubble_outline,
                    color:Colors.black,
                  ),
                  SizedBox(width:10),
                  Icon(
                    Icons.send,
                    color:Colors.black,
                  ),
                  Expanded(
                    child:Text('          ')),
                  Icon(
                    Icons.bookmark_add_outlined,
                    color:Colors.black,
                  ),
                ]
              )
            ],
            ),
      ),
      ) ;
  }
}

class Like extends StatefulWidget {  
  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
 
  bool liked=false;
  @override
  Widget build(BuildContext context) {
    return Container(
    child: IconButton(
      onPressed: (){
        setState(() {
          liked=!liked;
        });
        },
      icon: Icon(
            liked ? Icons.favorite:Icons.favorite_border,
            color:liked? Colors.red:Colors.black,
         )
        ),
       );
      }
}
        
