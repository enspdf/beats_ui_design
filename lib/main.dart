import 'package:beats_ui_design/src/pages/home_page.dart';
import 'package:beats_ui_design/src/providers/productos_prodiver.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => ProductosProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Beats App',
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage(),
        },
      ),
    );
  }
}
