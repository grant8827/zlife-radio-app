// ignore_for_file: camel_case_types, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:zliferadio/const.dart';
import 'package:zliferadio/widgets/videoplayer.dart';

class videoPlayer extends StatefulWidget {
  const videoPlayer({super.key});

  @override
  State<videoPlayer> createState() => _videoPlayerState();
}

class _videoPlayerState extends State<videoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio'),
        backgroundColor: appbarColor,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: mybackground,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Image.asset(
                    'lib/assets/images/zlifelogo.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                child: const Text(
                  'ZLIFE RADIO',
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                '24 Hours None Stop Gospel',
                softWrap: false,
                overflow: TextOverflow.fade,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color.fromARGB(255, 217, 174, 0)),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 40.0,
                  left: 10.0,
                  right: 10.0,
                ),
                width: 400,
                height: 220,
                child: const videoView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
