import 'package:flutter/material.dart';
//STARTED

// void main() => runApp(MaterialApp( //material app is widget
//   home: Text('heyyyyyyy '), //text is also widget and home is property 
// ));

void main() => runApp(MaterialApp( //material app is widget ,  //widgesta are the instances of claasses in flutter 
  home: Home()
));

class Home extends StatelessWidget { //ITS OUR OWN CUSTOM WIDGET ,WE CAN RESUE IT AGAIN AND AGAIN 
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
    body:Padding(
      padding:EdgeInsets.all(90.0),
      child:Text('helllooooooooooo')
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child:Text('click'),
      backgroundColor: Colors.red[600],
      ),
   );
  }
}

