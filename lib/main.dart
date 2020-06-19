import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/borrow_widget_screen.dart';
import 'package:provider/provider.dart';

import 'models/books.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Books(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xfffacc48),
          primaryColorLight: const Color(0xfffdebb2),
          accentColor: const Color(0xfffdebb2),
          buttonColor: Color(0xfffacc48),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'BOOK LENDING'),
      ),
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
  int _cIndex = 0;

  void incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: _cIndex == 0
            ? Center(child: Text("Home"))
            : _cIndex == 1
                ? BorrowWidgetScreen()
                : Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.bottomCenter,
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorLight,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      Center(
                        child: Text("Personal"),
                      ),
                    ],
                  ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _cIndex,
          elevation: 5,
          selectedLabelStyle: TextStyle(color: Colors.black),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text("Borrow"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text("Personal"),
            ),
          ],
          onTap: (index) {
            incrementTab(index);
          },
        ));
  }
}
