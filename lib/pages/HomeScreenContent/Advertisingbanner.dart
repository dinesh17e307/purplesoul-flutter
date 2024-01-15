import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AdvertisingBanner extends StatelessWidget {
  var images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgZeOACJG1LBgWwcFdSArQPMGxTLZAJ9ztcX3H-hMICgH54HHE",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView.builder(
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              shadowColor: Color.fromARGB(255, 247, 191, 25),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Image.network(
                images[index],
              ));
        },
      ),
    );
  }
}
