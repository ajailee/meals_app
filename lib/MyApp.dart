import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/Album.dart';
class MyApp extends StatefulWidget with WidgetsBindingObserver {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  Future<Album> albumfetch;
  GlobalKey formKey = new GlobalKey();


 @override
 void didChangeAppLifeCycleState(AppLifecycleState state){
    print(state);
 }
@override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
    albumfetch = fetchAlbum();
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text('http request'),
        ),
        body: Text('hi'),
      ),
    );
  }

}

