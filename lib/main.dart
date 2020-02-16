import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFEFECEC),
      bottomNavigationBar: CurvedNavigationBar(
        // height: 60,
        backgroundColor: Colors.red[200],
        buttonBackgroundColor: Colors.lightGreen[400],
        color: Color(0xFFb85353),
        items: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.fastfood,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
              Text(
                'reemplazar',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
              Text(
                'reemplazar',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: null, //!en teoria estos no son necesarios
              ),
              Text(
                'reemplazar',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
        onTap: (index) {}, //TODO para cambiar de paginas
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              WidgetHome(),
              WidgetHome(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              WidgetHome(),
              WidgetHome(),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}

class WidgetHome extends StatelessWidget {
  const WidgetHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color rojo = Color(0xFFc85353);
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.35,
      height: height * 0.28,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: rojo,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/home/history.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              'reemplazar',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
