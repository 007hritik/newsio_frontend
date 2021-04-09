import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:newsio/grpc_generated/newsio.pbgrpc.dart';
import 'package:newsio/services/db_service/DatabaseService.dart';

class GrpcClient {
  StreamController<News> _streamController = StreamController();
  StreamSubscription _streamSubscription;
  NewsServiceClient stub;

  GrpcClient() {
    //final channel = ClientChannel('192.168.1.8',port: );
    final channel = ClientChannel('192.168.1.8',
        port: 8081,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = NewsServiceClient(channel,
        options: CallOptions(timeout: Duration(seconds: 30)));
    // ignore: unnecessary_statements
  }

  printNews(News news) {
    print(news.title);
  }

  runfetchNewsArticles() async {
    addToDatabase();
    await for (var news in stub.fetchLatestNews(new noParams())) {
      _streamController.add(news);
    }
    DatabaseService.queryNews('techNews');
  }

  addToDatabase() {
    Stream stream = _streamController.stream;
    _streamSubscription = stream.listen((value) async {
      int id = await DatabaseService.insert('techNews', value);
      print("News Id: ${id}");
    });
  }
}
