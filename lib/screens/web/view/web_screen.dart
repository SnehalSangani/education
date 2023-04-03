import 'package:education/screens/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';


class web extends StatefulWidget {
  const web({Key? key}) : super(key: key);

  @override
  State<web> createState() => _webState();
}

class _webState extends State<web> {
  Homeprovider? f,t;
  @override
  Widget build(BuildContext context) {
    f=Provider.of<Homeprovider>(context,listen: false);
    t=Provider.of<Homeprovider>(context,listen: true);
    return SafeArea(child: Scaffold(appBar: AppBar(
      backgroundColor: Colors.black,
      title: Text("Web "),
    ),
      body:
      InAppWebView(initialUrlRequest: URLRequest(url: Uri.parse("${t!.url[t!.index]}"))),
    ),
    );
  }
}
