import 'package:flutter/material.dart';
import 'package:flutterapp/models/books.dart';
import 'package:flutterapp/widgets/tab_bar_widgets.dart';
import 'package:provider/provider.dart';

class BorrowWidgetScreen extends StatefulWidget {
  @override
  _BorrowWidgetScreenState createState() => _BorrowWidgetScreenState();
}

class _BorrowWidgetScreenState extends State<BorrowWidgetScreen> {
  List<String> categories = ["Child", "Humanities", "Education", "Science"];

  @override
  Widget build(BuildContext context) {

    
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: DefaultTabController(
        length: categories.length,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            flexibleSpace: TabBar(
              unselectedLabelStyle: TextStyle(color: const Color(0xFF0E3311).withOpacity(0.5), fontSize: 12),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 3.0),
                insets: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
              ),
              tabs: [
                Tab(
                  child: Text("Child"),
                ),
                Tab(child: Text("Humanities")),
                Tab(child: Text("Education")),
                Tab(child: Text("Science")),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TabBarWidgets(),
              Icon(Icons.desktop_mac),
              Icon(Icons.developer_board),
              Icon(Icons.description),
            ],
          ),
        ),
      ),
    );
  }
}
