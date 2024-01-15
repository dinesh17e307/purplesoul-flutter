import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MusicPlayerCOmponent extends StatelessWidget {
  const MusicPlayerCOmponent();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202301/rashmika_mandanna_trolling_should_i_leave-three_four.jpg?VersionId=3LVyfuCNcO0Q736EUehj2eQGvLJvBPWW',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Varanam ayyaram',
            style: TextStyle(color: Colors.amber, fontSize: 12),
          ),
          Text(
            'suriya',
            style: TextStyle(color: Colors.amber, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
