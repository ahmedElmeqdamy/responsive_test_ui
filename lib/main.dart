import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Responsive UI'),),
      body: Column(
        children: [
          Text('here you are '),
          SizedBox(height: 20,),
          Text('this is the body text it should be responsive with screen side'),
        ],
      ),
    );
  }
}

