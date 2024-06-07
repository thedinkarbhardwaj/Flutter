import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(WebView());
}
class WebView extends StatelessWidget {
   WebView({super.key});

  var controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
  NavigationDelegate(
  onProgress: (int progress) {
  // Update loading bar.

    CircularPercentIndicator(
      radius: 20.0,
      lineWidth: 5.0,
      percent: 1.0,
      center: new Text("100%"),
      progressColor: Colors.green,
    );

  },
  onPageStarted: (String url) {
  },
  onPageFinished: (String url) {
    CircularPercentIndicator(
      radius: 20.0,
      lineWidth: 5.0,
      percent: 1.0,
      center: new Text("100%"),
      progressColor: Colors.green,
    );
  },
  onWebResourceError: (WebResourceError error) {},
  onNavigationRequest: (NavigationRequest request) {
  if (request.url.startsWith('https://www.youtube.com/')) {
  return NavigationDecision.prevent;
  }
  return NavigationDecision.navigate;
  },
  ),
  )
  ..loadRequest(Uri.parse('https://flutter.dev'));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: WebViewWidget(controller: controller),
      ),
    );
  }
}
