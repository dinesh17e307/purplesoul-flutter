import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../FlutterComponents/FlutterCard.dart';
import 'package:flutter/material.dart';
import 'package:purple_soul/FlutterComponents/FlutterButton.dart';

class ProfilePage extends StatelessWidget {
  var Questions = [
    'Welcome',
    'what\s your name',
    'Tell me about yourself',
    'de',
    'de'
  ];
  ProfilePage({super.key});
  PremiumHandler() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/purpleSoul.png'),
                      backgroundColor: Colors.white,
                      radius: 100,
                    ),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Dinesh Sellappan',
                          style: TextStyle(color: Colors.amber, fontSize: 25),
                          textAlign: TextAlign.center,
                        )),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: Table(
                          children: [
                            TableRow(children: [
                              TableCell(
                                  child: Text(
                                '123',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.amber),
                              )),
                              TableCell(
                                child: Text('45',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.amber)),
                              ),
                              TableCell(
                                child: Text('300',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.amber)),
                              )
                            ]),
                            TableRow(children: [
                              TableCell(
                                  child: Text(
                                'Followers',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )),
                              TableCell(
                                child: Text('Playlist',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.grey)),
                              ),
                              TableCell(
                                child: Text('Following',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.grey)),
                              )
                            ])
                          ],
                        )),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [
                            0.1,
                            0.4,
                          ],
                          colors: [
                            Colors.yellow,
                            Colors.red,
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Card(
                          elevation: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          shadowColor: Colors.white,
                          color: Colors.transparent,
                          child: SizedBox(
                              height: 100,
                              width: double.infinity,
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(children: [
                                  Text(
                                    'Upgrade to premium to enjoy uninterupted music without ads',
                                    softWrap: true,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  // FlutterButton(
                                  //     ElevatedButton.styleFrom(
                                  //         backgroundColor: Colors.purple,
                                  //         foregroundColor: Colors.white,
                                  //         shape: CircleBorder()),
                                  //     'See More',
                                  //     PremiumHandler),
                                ]),
                              )),
                        ),
                      ),
                    ),
                    Container(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'Recently Played ',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
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
                                                  150.0, 150.0, item, 'heuuu'),
                                            );
                                          })).toList()
                                        ],
                                      )),
                                ]))),
                  ],
                ))));
  }
}
