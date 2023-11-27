// ignore_for_file: camel_case_types, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:zliferadio/screens/radio.dart';
import 'package:zliferadio/screens/video.dart';

class frontScreen extends StatelessWidget {
  const frontScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(62, 88, 86, 86),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                child: Image.asset(
                  "lib/assets/images/zlifelogo.png",
                  width: 300,
                  height: 300,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              const Text(
                'Welcome To',
                style: TextStyle(fontSize: 20, color: Colors.amber),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'ZLIFE RADIO',
                  style: TextStyle(fontSize: 50, color: Colors.amber),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => playerPage()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Listen Live Radio',
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.play_arrow),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => videoPlayer()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'View Live Video',
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.play_arrow),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
