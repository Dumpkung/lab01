import 'package:flutter/material.dart';
import 'package:flutter_lab01/ui/first_screen.dart';
import 'package:flutter_lab01/ui/my_custom_form.dart';
import 'package:flutter_lab01/ui/second_screen.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => MyCustomForm(),
        '/second': (context) => SecondScreen(),

      },
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World text bebe!!!"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('$counter'),
            Text("Value 2 "),
            Text("Value 3"),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        onPressed: (){
          counter++;
          print("counter value $counter");
        }
      ),
    );
  return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
            bottom: TabBar(tabs: <Widget>[
              Tab(
               icon: Icon(Icons.camera), text: "Camera",
              ),
              Tab(
                icon: Icon(Icons.add_alarm),
              ),
              Tab(
                icon: Icon(Icons.add_alarm),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.camera),
            Icon(Icons.add_alarm),
            Icon(Icons.account_box)
          ],
        ),
      ),
    );
  }
}
