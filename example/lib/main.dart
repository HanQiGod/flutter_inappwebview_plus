import 'package:flutter/material.dart';
import 'package:flutter_inappwebview_plus/flutter_inappwebview_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final URLRequest _initialRequest;

  @override
  void initState() {
    super.initState();
    _initialRequest = URLRequest(url: WebUri('https://flutter.dev'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text(
            'Sample URL: ${_initialRequest.url}',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
