import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class contactPage extends StatelessWidget {
  const contactPage({super.key});

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
              'Contact Us',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
              top: 20.0,
              left: 10.0,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 192, 20),
                  foregroundColor: Colors.black),
              onPressed: () async {
                Uri phoneno = Uri.parse('tel:+13472893200 ');
                if (await launchUrl(phoneno)) {
                  //dialer opened
                } else {
                  //dailer is not opened
                }
              },
              child: const Text(
                "📞  Call Us:  347-289-3200 ",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
              top: 20.0,
              left: 10.0,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 192, 20),
                  foregroundColor: Colors.black),
              onPressed: () async {
                Uri email = Uri.parse('http://zliferadio93.5@gmail.com');
                if (await launchUrl(email)) {
                  //dialer opened
                } else {
                  //dailer is not opened
                }
              },
              child: const Text(
                "📧  Email Us: zliferadio93.5@gmail.com ",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
              top: 20.0,
              left: 10.0,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 192, 20),
                  foregroundColor: Colors.black),
              onPressed: () async {
                Uri website =
                    Uri.parse('https://www.zliferadionetworkllc.com/');
                if (await launchUrl(website)) {
                  //send email
                } else {
                  // do nothing
                }
              },
              child: const Text(
                '🌐  www.zliferadionetworkllc.com',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
              top: 20.0,
              left: 10.0,
            ),
            child: const Text(
              'Follow Us On',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
              top: 20.0,
              left: 10.0,
            ),
            child: Row(
              children: [
                IconButton(
                  padding: const EdgeInsets.only(
                    right: 40.0,
                  ),
                  icon: const FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                    size: 40,
                  ),
                  onPressed: () async {
                    Uri youtube = Uri.parse(
                        'https://www.facebook.com/Zliferadionetwork/');
                    if (await launchUrl(youtube)) {
                      // open facebook
                    } else {
                      //do nothing
                    }
                  },
                ),
                IconButton(
                  padding: const EdgeInsets.only(
                    right: 40.0,
                  ),
                  icon: const FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.pink,
                    size: 40,
                  ),
                  onPressed: () async {
                    Uri youtube = Uri.parse(
                        'https://www.instagram.com/zliferadionetwork/');
                    if (await launchUrl(youtube)) {
                      // open facebook
                    } else {
                      //do nothing
                    }
                  },
                ),
                IconButton(
                  padding: const EdgeInsets.only(
                    right: 40.0,
                  ),
                  icon: const FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.blue,
                    size: 40,
                  ),
                  onPressed: () async {
                    Uri youtube = Uri.parse('https://www.twitter.com');
                    if (await launchUrl(youtube)) {
                      // open facebook
                    } else {
                      //do nothing
                    }
                  },
                ),
                IconButton(
                  padding: const EdgeInsets.only(
                    right: 40.0,
                  ),
                  icon: const FaIcon(
                    FontAwesomeIcons.youtube,
                    color: Colors.red,
                    size: 40,
                  ),
                  onPressed: () async {
                    Uri youtube = Uri.parse(
                        'https://www.youtube.com/channel/UCdal4CzquZeVUPKioxG8-yg');
                    if (await launchUrl(youtube)) {
                      // open facebook
                    } else {
                      //do nothing
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
