// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';
import 'package:radio_player/radio_player.dart';
import 'package:zliferadio/const.dart';

class playerPage extends StatefulWidget {
  const playerPage({super.key});

  @override
  State<playerPage> createState() => _playerPageState();
}

class _playerPageState extends State<playerPage> {
  final RadioPlayer _radioPlayer = RadioPlayer();
  bool isPlaying = false;
  List<String>? metadata;

  @override
  void initState() {
    super.initState();
    initRadioPlayer();
  }

  void initRadioPlayer() {
    _radioPlayer.setChannel(
      title: 'Zlife Radio',
      url: 'https://stream.radio.co/s10cce290f/listen',
      imagePath: 'assets/cover.jpg',
    );

    _radioPlayer.stateStream.listen((value) {
      setState(() {
        isPlaying = value;
      });
    });

    _radioPlayer.metadataStream.listen((value) {
      setState(() {
        metadata = value;
      });
    });
  }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
            Text(
              metadata?[1] ?? '',
              softWrap: false,
              overflow: TextOverflow.fade,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 180),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: const Color.fromARGB(255, 229, 187, 0),
        onPressed: () {
          isPlaying ? _radioPlayer.pause() : _radioPlayer.play();
        },
        tooltip: 'Control button',
        child: Icon(
          isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
          color: Colors.black,
        ),
      ),
    );
  }
}
