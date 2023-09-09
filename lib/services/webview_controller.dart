import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
        const Center(
          child: CircularProgressIndicator(),
        );
      },
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(Uri.parse('https://github.com/presh-devs'));


