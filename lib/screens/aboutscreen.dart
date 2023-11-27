import 'package:flutter/material.dart';

class aboutpage extends StatelessWidget {
  const aboutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
              top: 20.0,
              left: 10.0,
            ),
            child: const Text(
              'About Zlife Radio',
              style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  color: Colors.white),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
              top: 20.0,
              left: 10.0,
            ),
            child: const Text(
              '''Zlife radio 24 hours per day 7 days per week Gospel music.''',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
              top: 20.0,
              left: 10.0,
            ),
            child: const Text(
              'Operation Change',
              style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  color: Colors.white),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
              top: 20.0,
              left: 10.0,
            ),
            child: const Text(
              '''Operation Change, Let The Children Come “ is a mission minded organization that collaborates with Zliferadionetworkllc charities and is geared to reach children across the world. We are presently focusing on the island of Jamaica where the program assisted fifty children ages ranging from five to seventeen years old along with their parents during the covid 19 pandemic in the parish of Clarendon.''',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
