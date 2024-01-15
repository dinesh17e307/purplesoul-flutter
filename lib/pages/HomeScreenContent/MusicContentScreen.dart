import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:purple_soul/FlutterComponents/FlutterCard.dart';

class MusicContentScreen extends StatelessWidget {
  var Category = [
    'Top Trending',
    'Lastest Music',
    'Rock songs',
    'Romance',
    'Party Hits'
  ];
  var Questions = [
    'dinesh',
    'yuvan',
    'anirudh',
    'vivek',
    'Diman',
    'muthukumar'
  ];
  var musicData = {};
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: Category.length,
                itemBuilder: (context, index) {
                  return Column(children: [
                    ListTile(
                      textColor: Colors.white,
                      title: Text(
                        Category[index],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      child: Divider(
                        color: Color.fromARGB(255, 155, 23, 144),
                        thickness: 5.0,
                      ),
                      width: double.maxFinite,
                    ),
                    Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          addAutomaticKeepAlives: true,
                          children: <Widget>[
                            ...(Questions.map((item) {
                              return Container(
                                child: FlutterCard(
                                    150.0, 150.0, item, 'from kayal'),
                              );
                            })).toList()
                          ],
                        )),
                  ]);
                })));
  }
}
