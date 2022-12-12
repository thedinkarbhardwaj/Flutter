import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

main(){
  runApp(webview());
}

class webview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    WebViewController _controller;

    return  MaterialApp(
      title: 'Webview',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Webview"),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          elevation: 5,
          backgroundColor: Colors.greenAccent[400],
        ),
        body: Center(
          child: WebView(
            initialUrl: 'https://www.geeksforgeeks.org/',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller = webViewController;
            },
          ),
        ),
      ),
    );

}
}
