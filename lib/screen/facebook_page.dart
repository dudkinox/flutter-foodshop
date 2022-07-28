import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FacebookPage extends StatefulWidget {
  const FacebookPage({Key? key}) : super(key: key);

  @override
  State<FacebookPage> createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl:
          'https://www.facebook.com/โจ๊กสามไข่-962360270509163/?_rdc=2&_rdr',
    );
  }
}
