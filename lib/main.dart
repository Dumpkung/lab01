import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return MyHomePageState();
//   }

// }

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(length:  3, child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Tabbar"
        ), 
        bottom:  
        TabBar(
          tabs: <Widget> [
            Tab(
              icon : Icon(Icons.camera),
              text: "Camera",
            ),
            Tab(
              icon : Icon(Icons.add_alarm),
              text: "Alarm",
            ),
            Tab(
              icon : Icon(Icons.account_box),
              text: "Box",
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Icon(Icons.camera),
          Icon(Icons.add_alarm),
          Icon(Icons.account_box),
        ],
      )
      ),
    );
  }

}

// class MyHomePageState extends State<MyHomePage> {
//  int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello Wolrd"),
//       ),
//       body: Column(
//         mainAxisAlignment:  MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Text("$counter"),
//           Text("Dump"),
//           Text("Mark"),
//           Text("GAME"),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
//       onPressed: () {
//         setState(() {
//           counter++;
//         });
//         print("counter value $counter");
//       }
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {

//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
    


//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello Wolrd"),
//       ),
//       body: Text("$counter"),
//       floatingActionButton: IconButton(icon: Icon(Icons.add),
//       onPressed: () {
//         counter++;
//         print("counter value $counter");
//       }
//       ),
//     );
//   }

// }

