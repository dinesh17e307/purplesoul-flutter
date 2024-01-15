import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:purple_soul/FlutterComponents/MusicPlayerComponent.dart';

class FlutterCard extends StatelessWidget {
  final cardHeight;
  final cardWidth;
  final cardTitle;
  final cardSubTitle;

  const FlutterCard(
      this.cardHeight, this.cardWidth, this.cardTitle, this.cardSubTitle);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: cardHeight,
        width: cardWidth,
        child: InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MusicPlayerCOmponent()),
                ),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                borderOnForeground: true,
                color: Colors.black,
                elevation: 10,
                child: Column(children: <Widget>[
                  Container(
                    child: ListTile(
                      title: Text(
                        cardTitle,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromARGB(255, 219, 228, 233),
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      selectedTileColor: Colors.blueAccent,
                      subtitle: Text(
                        cardSubTitle,
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://t4.ftcdn.net/jpg/04/10/17/95/360_F_410179527_ExxSzamajaCtS16dyIjzBRNruqlU5KMA.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ]))));
  }
}
