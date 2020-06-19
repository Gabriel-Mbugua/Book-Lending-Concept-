import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  List<String> categories = ["Child", "Humanities", "Education", "Science"];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                categories[i],
                style: TextStyle(fontSize: 16),
              ),
            );
          }),
    );
  }
}
