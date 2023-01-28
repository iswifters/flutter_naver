import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home:   FlutterNaver(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class  FlutterNaver extends StatefulWidget {
  const FlutterNaver ({Key? key}) : super(key: key);

  @override
  _FlutterNaverState createState() => _FlutterNaverState();
}

class _FlutterNaverState extends State<FlutterNaver> {

  int _currentIndex = 0;
  final tabs = [


    Container(
      height: 500,
      width:   450,
      child: Image(image: AssetImage("images/HOMEPAGE.png"),

      ),),



    //profile

       Container(
         height: 500,
         width:   450,
         child: Image(image: AssetImage("images/PROFILE.png"),
          height: 400,
          width: 600,
        ),),


    //settings
     Container(
        height: 500,
        width: 450,
        child: Image(image: AssetImage("images/SETTINGS.png"),
          height: 400,
          width: 600,
        ),
      ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        title: Text("Navigate",),
        backgroundColor: Colors.blueGrey[400],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey[400],
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,
              color: Colors.white,
            ),
            label: "HoMe",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_box,
              color: Colors.white,),
            label: "Profile",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings,
              color: Colors.white,),
            label: "Settings",

          ),

        ],

        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

