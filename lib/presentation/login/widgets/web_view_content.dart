// ignore_for_file: prefer-widget-private-members, dispose-fields, avoid-dynamic

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'package:spotify_playlist_helper/const/apis.dart';
import 'package:spotify_playlist_helper/const/credentials.dart';

class WebViewContent extends StatefulWidget {
  final Function(String) onCodeReceivedHandler;

  const WebViewContent({required this.onCodeReceivedHandler});

  @override
  WebViewContentState createState() => WebViewContentState();
}

class WebViewContentState extends State<WebViewContent> {
  final GlobalKey webViewKey = GlobalKey();

  static const String userAgentName =
      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36';

  final String queryString = 'response_type=code&'
      'client_id=${ApiCredentials.clientId}&'
      'scope=${ApiCredentials.scope.join(' ')}&'
      'redirect_uri=${ApiCredentials.redirectUri}&'
      'state=${ApiCredentials.state}';

  InAppWebViewController? webViewController;

  InAppWebViewSettings options = InAppWebViewSettings(
    useShouldOverrideUrlLoading: true,
    useShouldInterceptAjaxRequest: true,
    useShouldInterceptFetchRequest: true,
    mediaPlaybackRequiresUserGesture: false,
    clearCache: true,
    cacheEnabled: false,
    allowsInlineMediaPlayback: true,
    iframeAllow: "camera; microphone",
    iframeAllowFullscreen: true,
    userAgent: userAgentName,
    applicationNameForUserAgent: userAgentName,
  );

  late PullToRefreshController pullToRefreshController;

  @override
  void initState() {
    super.initState();

    Future<void> handleRefresh() async {
      if (Platform.isAndroid) {
        webViewController?.reload();
      } else if (Platform.isIOS) {
        webViewController?.loadUrl(
          urlRequest: URLRequest(url: await webViewController?.getUrl()),
        );
      }
    }

    pullToRefreshController = PullToRefreshController(
      onRefresh: () async => handleRefresh(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      key: webViewKey,
      initialSettings: options,
      initialUrlRequest:
          URLRequest(url: WebUri("${Apis.authorize}?$queryString")),
      pullToRefreshController: pullToRefreshController,
      onWebViewCreated: (controller) => handleWebViewCreated(controller),
      shouldOverrideUrlLoading: (controller, navigationAction) async =>
          handleShouldOverrideUrlLoading(navigationAction),
    );
  }

  void handleWebViewCreated(InAppWebViewController controller) {

    webViewController = controller;
  }

  NavigationActionPolicy handleShouldOverrideUrlLoading(
    navigationAction,
  ) {
    WebUri uri = navigationAction.request.url!;

    if (uri.host.contains('github') && uri.queryParameters['code'] != null) {
      final code = uri.queryParameters['code'];

      widget.onCodeReceivedHandler(code!);

      return NavigationActionPolicy.CANCEL;
    }

    return NavigationActionPolicy.ALLOW;
  }
}
