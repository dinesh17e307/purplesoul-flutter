import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:purple_soul/FlutterComponents/FlutterCard.dart';
import 'package:purple_soul/pages/HomeScreenContent/Advertisingbanner.dart';
import 'package:purple_soul/pages/HomeScreenContent/MusicContentScreen.dart';

class HomeSCreenContent extends StatelessWidget {
  const HomeSCreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          child: AdvertisingBanner(),
        ),
        MusicContentScreen(),
      ],
    ));
  }
}
