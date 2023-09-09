import 'package:flutter/material.dart';
import 'package:hngx_1/services/webview_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitHubPage extends StatelessWidget {
  const GitHubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Page'),
        actions: [
          IconButton(onPressed: ()=> controller.reload(), icon: const Icon(Icons.refresh), tooltip: 'Refresh',)
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
