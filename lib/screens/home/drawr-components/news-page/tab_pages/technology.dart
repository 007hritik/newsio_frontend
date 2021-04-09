import 'package:flutter/material.dart';
import 'package:newsio/grpc_generated/newsio.pb.dart';
import 'package:newsio/services/db_service/DatabaseService.dart';

class Techonology extends StatefulWidget {
  @override
  _TechonologyState createState() => _TechonologyState();
}

class _TechonologyState extends State<Techonology> {
  List<News> techNews = [];

  @override
  Widget build(BuildContext context) {
    DatabaseService.queryNews("techNews");
    return Scaffold(body: Center(child: Text("Body yet to be implemented")));
  }
}
