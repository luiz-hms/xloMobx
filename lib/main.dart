import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

import 'screens/base/base_screen.dart';
import 'stores/page_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse(); //evita que seja feito qlqr coisa sem Parse inicializado
  setupLocators();
  runApp(MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
}

Future<void> initializeParse() async {
  await Parse().initialize(
    'K0l0qzHTcqfdrflt52oYjP3FoqGFvmeGtKFRdpW8',
    'https://parseapi.back4app.com/',
    clientKey: 'm33BqE1zij8ZQ66FhtGNtimBCHwysP2RRqQnLV6W',
    autoSendSessionId: true,
    debug: true,
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XLO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: BaseScreen(),
    );
  }
}
