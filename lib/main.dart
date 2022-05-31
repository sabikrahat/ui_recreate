import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_recreate/provider_page/pd_handler.dart';
import 'package:ui_recreate/provider_page/provider_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<counterProvider>(create: (_) => counterProvider()),
        ],
        child: const ProviderPage(),
      ),
    );
  }
}
