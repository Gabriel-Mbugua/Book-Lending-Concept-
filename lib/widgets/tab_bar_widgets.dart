import 'package:flutter/material.dart';
import 'package:flutterapp/models/books.dart';
import 'package:provider/provider.dart';

class TabBarWidgets extends StatefulWidget {
  @override
  _TabBarWidgetsState createState() => _TabBarWidgetsState();
}

class _TabBarWidgetsState extends State<TabBarWidgets> {

  @override
  Widget build(BuildContext context) {
     final booksData = Provider.of<Books>(context);
    final _books = booksData.items;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // CategoriesWidget(),
              Container(
                height: MediaQuery.of(context).size.height * 0.76,
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: _books.length,
                    itemBuilder: (ctx, i) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: FadeInImage(
                                  height: 140,
                                  width: 100,
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    _books[i].imageURl,
                                  ),
                                  placeholder: AssetImage(
                                      "assets/images/book_placeholder.png"),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    ListTile(
                                      title: Text(
                                        _books[i].title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      subtitle: Text(
                                        _books[i].description,
                                        style: Theme.of(context)
                                            .textTheme
                                            .overline,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        RichText(
                                          text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              TextSpan(
                                                  text: "261 ",
                                                  style: TextStyle(
                                                      color: Color(0xffd67066),
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(text: "remaining")
                                            ],
                                          ),
                                        ),
                                        RaisedButton(
                                          onPressed: () {},
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  topLeft: Radius.circular(0))),
                                          child: Text("Borrow it"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}