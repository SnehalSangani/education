import 'package:education/screens/home/provider/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class web extends StatefulWidget {
  const web({Key? key}) : super(key: key);

  @override
  State<web> createState() => _webState();
}

class _webState extends State<web> {
  Homeprovider? f;
  @override
  Widget build(BuildContext context) {
    f=Provider.of<Homeprovider>(context,listen: false);
    return SafeArea(child: Scaffold(
      body: WebViewWidget(
        controller: f!.webViewController!,
      ),
    ),
    );
  }
}
