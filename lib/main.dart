import 'package:cloud_storage/pages/rootpage.dart';
import 'package:cloud_storage/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthServ().usr,
      child:  MaterialApp(
            title: 'Easy Assignments',
            home: Root(), //should be RootPage
            debugShowCheckedModeBanner: false,
          ),
    );
  }
}

