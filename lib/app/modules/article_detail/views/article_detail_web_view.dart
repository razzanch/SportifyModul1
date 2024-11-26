import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../data/models/article.dart';
import '../controllers/article_detail_controller.dart';

// ignore: must_be_immutable
class ArticleDetailWebView extends GetView<ArticleDetailController> {
  final ArticleElement article;

  const ArticleDetailWebView({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    // Pastikan controller diinisialisasi di sini
    Get.put(ArticleDetailController());  // Inisialisasi controller secara manual

    return Scaffold(
      appBar: AppBar(title: const Text("WebView")),
      body: WebViewWidget(
        controller: controller.webViewController(article.url),
      ),
    );
  }
}