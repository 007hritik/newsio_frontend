import 'dart:async';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:newsio/services/newsService/grpcClient.dart';

import 'services/db_service/DatabaseService.dart';
// import 'package:newsio/constants.dart';
// import 'package:newsio/grpc_generated/newsio.pb.dart';
// import 'package:newsio/models/User.dart';
// import 'package:newsio/screens/home/drawr-components/news-page/NewsScreen.dart';
// import 'package:newsio/services/Wrapper.dart';
// import 'package:newsio/services/db_service/DatabaseService.dart';
// import 'package:newsio/services/newsService/grpcClient.dart';
// import 'package:provider/provider.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   print("data base initialize database");
//   await DatabaseService.intit();

//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Auth',
//         theme: ThemeData(
//           primaryColor: kPrimaryColor,
//           scaffoldBackgroundColor: Colors.white,
//         ),
//         home: MultiProvider(providers: [
//           ChangeNotifierProvider<User>(
//             create: (_) => User(),
//           ),
//           StreamProvider<News>(create: (_) {
//             return GrpcClient().runfetchNewsArticles();
//           })
//         ], child: Wrapper()));
//     //home: NewsScreen());
//   }
// }
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // StreamController<double> _streamController = StreamController();
  // StreamSubscription _streamSubscription;
  @override
  Widget build(BuildContext context) {
    DatabaseService.intit();
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                padding: EdgeInsets.all(10),
                color: Colors.greenAccent,
                onPressed: () {
                  // Stream stream = _streamController.stream;
                  // _streamSubscription = stream.listen((value) {
                  //   print("Value from the controller ${value}");
                  // });
                  print("reaching here");
                  GrpcClient().runfetchNewsArticles();
                },
                child: Text("Suscribe"),
              ),
              // MaterialButton(
              //   padding: EdgeInsets.all(10),
              //   color: Colors.yellowAccent,
              //   onPressed: () {
              //     _streamController.add(12.00);
              //   },
              //   child: Text("Emit"),
              // ),
              // MaterialButton(
              //   padding: EdgeInsets.all(10),
              //   color: Colors.redAccent,
              //   onPressed: () {
              //     _streamSubscription.cancel;
              //   },
              //   child: Text("Unsucribe"),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
