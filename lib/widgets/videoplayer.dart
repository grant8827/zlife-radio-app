// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class videoView extends StatefulWidget {
  const videoView({super.key});

  @override
  State<videoView> createState() => _videoViewState();
}

class _videoViewState extends State<videoView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(
            'https://streaming.intacs.com/clients/zliferadio/v/video.html'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
