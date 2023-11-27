// ignore_for_file: library_private_types_in_public_api, prefer_final_fields, sized_box_for_whitespace, sort_child_properties_last, prefer_const_constructors, avoid_unnecessary_containers, unused_import, duplicate_import, unnecessary_const, deprecated_member_use, camel_case_types, unused_element

/*
 *  main.dart
 *
 *  Created by Ilya Chirkunov <xc@yar.net> on 28.12.2020.
 */

import 'package:flutter/material.dart';
import 'package:radio_player/radio_player.dart';
import 'package:zliferadio/const.dart';
import 'package:zliferadio/screens/aboutscreen.dart';
import 'package:zliferadio/screens/contactscreen.dart';
import 'package:zliferadio/screens/frontscreen.dart';
import 'package:zliferadio/screens/radio.dart';
import 'package:zliferadio/screens/video.dart';
import 'package:share/share.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<homePage> {
  int pageIndex = 0;
  final List pages = [
    frontScreen(),
    aboutpage(),
    playerPage(),
    videoPlayer(),
    contactPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Home'),
          actions: [
            IconButton(
              onPressed: () {
                Share.share(
                    'https://play.google.com/store/apps/details?id=com.bdmradio&pcampaignid=web_share');
              },
              icon: Icon(Icons.share),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(62, 88, 86, 86),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.amber,
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.amber),
                  accountName: Text(
                    "",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  accountEmail: Text(
                    "lib/assets/images/zlifelogo.png",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  currentAccountPictureSize: Size.square(60),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 0, 0, 0),
                    child: Text(
                      "ZLIFE RADIO",
                      style: TextStyle(fontSize: 15.0, color: Colors.amber),
                      textAlign: TextAlign.center,
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                  selectedColor: drawerSelectedColor,
                  selectedTileColor: drawerTileColor,
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  selected: pageIndex == 0,
                  onTap: () {
                    Navigator.pop(context);

                    _onItemTapped(0);
                  }),
              ListTile(
                selectedColor: drawerSelectedColor,
                selectedTileColor: drawerTileColor,
                leading: const Icon(Icons.info),
                title: const Text('About'),
                selected: pageIndex == 1,
                onTap: () {
                  Navigator.pop(context);

                  _onItemTapped(1);
                },
              ),

              ListTile(
                selectedColor: drawerSelectedColor,
                selectedTileColor: drawerTileColor,
                leading: const Icon(Icons.contacts),
                title: const Text(' Contact'),
                selected: pageIndex == 4,
                onTap: () {
                  Navigator.pop(context);

                  _onItemTapped(4);
                },
              ),

              Divider(),
              ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Color.fromARGB(255, 13, 99, 199),
                  ),
                  title: const Text(
                    ' Facebook',
                  ),
                  onTap: () async {
                    Uri email = Uri.parse(
                        'https://www.facebook.com/Zliferadionetwork/');
                    if (await launchUrl(email)) {
                      //open email
                    } else {
                      //do nothing
                    }
                  }),
              ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Color.fromARGB(255, 56, 147, 251),
                  ),
                  title: const Text(
                    'Twitter',
                  ),
                  onTap: () async {
                    Uri email = Uri.parse('https://www.twitter.com');
                    if (await launchUrl(email)) {
                      //open email
                    } else {
                      //do nothing
                    }
                  }),
              ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Color.fromARGB(255, 199, 13, 183),
                  ),
                  title: const Text(
                    ' Instagram',
                  ),
                  onTap: () async {
                    Uri email = Uri.parse(
                        'https://www.instagram.com/zliferadionetwork/');
                    if (await launchUrl(email)) {
                      //open email
                    } else {
                      //do nothing
                    }
                  }),
              ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.youtube,
                    color: Color.fromARGB(255, 199, 13, 13),
                  ),
                  title: const Text(
                    'YouTube',
                  ),
                  onTap: () async {
                    Uri email = Uri.parse(
                        'https://www.youtube.com/channel/UCdal4CzquZeVUPKioxG8-yg');
                    if (await launchUrl(email)) {
                      //open email
                    } else {
                      //do nothing
                    }
                  }),
              ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.globe,
                    color: Color.fromARGB(255, 13, 99, 199),
                  ),
                  title: const Text(
                    'Visit Our Website',
                  ),
                  onTap: () async {
                    Uri email =
                        Uri.parse('https://www.zliferadionetworkllc.com/');
                    if (await launchUrl(email)) {
                      //open email
                    } else {
                      //do nothing
                    }
                  }),
            ],
          ),
        ),
        body: pages[pageIndex]);
  }
}
