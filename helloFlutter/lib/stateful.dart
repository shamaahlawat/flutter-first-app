import 'package:flutter/material.dart';
//STARTED

// void main() => runApp(MaterialApp( //material app is widget
//   home: Text('heyyyyyyy '), //text is also widget and home is property 
// ));

void main() => runApp(MaterialApp( //material app is widget ,  //widgesta are the instances of claasses in flutter 
  home: Home()
));

class Home extends StatefulWidget { //ITS OUR OWN CUSTOM WIDGET ,WE CAN RESUE IT AGAIN AND AGAIN 
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int level = 0 ; 
  @override 
  Widget build(BuildContext context) { //USE TO DETECT CHANGE AND REFRESH OR HOT RESTART 
    return Scaffold(  // scafold widget has appBar property and its value is AppBar widget
    appBar:AppBar( //inside AppBar widget we also have property so each widget has different properties
       title : Text(
         'My first App',
         style:TextStyle(  //style property and TextStyle is widget which has many properties like background color
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color:Colors.grey[600]
           )
         ),
       centerTitle : true,
       backgroundColor: Colors.red[600],
    ),
    // body:Center(
    //   // child: Text('HELLO NINJASSSS'), // FOR TEXT 
    //   //ways to render images
    //   // child:Image.asset('assets/shama.png'),
    // //   child:Image(
    // //     // image: NetworkImage('https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg'), //FOR NETWORK IMAGE
    // //     // image:AssetImage('assets/shama.png') //why not working
    // //     )
    // // child:Icon(
    // //   Icons.airport_shuttle,
    // //   size:50.0
    // // )

    // // BUTTONS 

    //   //  child:RaisedButton(
    //   //    onPressed: () {
    //   //      print('you clicked me');
    //   //    },
    //   //    child:Text('ckick me'),
    //   //    color:Colors.lightBlue
    //   //  )

    //   //  child:RaisedButton.icon(
    //   //    onPressed: () {
    //   //      print('you clicked me');
    //   //    },
    //   //    icon: Icon(
    //   //      Icons.mail
    //   //    ),
    //   //    label:Text('mail me'),
    //   //    color:Colors.amber,
    //   //  )

    //   // child:IconButton(
    //   //   icon: Icon(Icons.alternate_email),
    //   //    onPressed: () {},
    //   //    color: Colors.amber,)

    // ), //child of center widget

//CONTAINER
    // body: Container(
    //   // padding:EdgeInsets.all(20.0),
    //   // padding:EdgeInsets.symmetric(horizontal:30.0 , vertical:10.0),
    //   padding:EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
    //   margin:EdgeInsets.all(30.0),
    //   color:Colors.grey[400],
    //   child:Text('hey whts app')
    // ),

    //CONTAINER OTHER WAY
    // body:Padding(
    //   padding:EdgeInsets.all(90.0),
    //   child:Text('helllooooooooooo')
    // ),

    //ROW WIDGET

    // body: Row(
    //   mainAxisAlignment:MainAxisAlignment.spaceBetween,
    //   crossAxisAlignment: CrossAxisAlignment.end,
    //   children: <Widget>[
    //     Text('HELLO'),
    //     FlatButton(
    //       onPressed: () {},
    //      child: Text('Click me'),
    //      color:Colors.amber,
    //      ),
    //      Container(
    //        color:Colors.cyan,
    //        padding:EdgeInsets.all(10.0),
    //        child:Text('inside container')
    //      )
    // ],), 

    //COLUMN WIDGET
     body:Row(
       children: <Widget>[
            Expanded(
              child: Image.asset('assets/shama.png'),
              flex:3
            ),
            Expanded(
                flex:3,
                child: Container(
                padding:EdgeInsets.all(30.0),
                color:Colors.cyan,
                child:Text('${level}',
                style:TextStyle(letterSpacing: 2.0,color:Colors.pinkAccent[200],fontSize: 28.0))
              ),
            ),
            Expanded(
                 flex:2,
                child: Container(
                padding:EdgeInsets.all(30.0),
                color:Colors.green,
                child:Text('2')
              ),
            ),
            Expanded(
                flex:1,
                child: Container(
                padding:EdgeInsets.all(30.0),
                color:Colors.pinkAccent,
                child:Text('3')
              ),
            )
     ],),

    floatingActionButton: FloatingActionButton(
      onPressed: () {
        setState((){ // to rebuilding function itself  , its rebuild new state
               level += 1;
        });
      },
      child:Text('click'),
      backgroundColor: Colors.red[600],
      ),
   );
  }
}


//SizedBox space between two things - SizedBox(height:30.0) 
// Center(CircleAvatar(backgroundImage:AssetImage('assets/shama.png'),radius:40.0))
// Divider(height:60.0,color:)
