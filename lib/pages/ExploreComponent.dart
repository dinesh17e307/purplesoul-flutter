import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ExploreComponent extends StatelessWidget {
  var podcasts = ['heloow'];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(scrollDirection: Axis.vertical, children: <Widget>[
      ...(podcasts.map((item) {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height - 100,
          child: Card(
            color: Color.fromARGB(255, 228, 176, 223),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            borderOnForeground: true,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      'The Euphoria actor joined British musician Labrinth during his set to perform the songs '),
                )
              ],
            ),
          ),
        );
      })).toList(),
    ]));
  }
}
