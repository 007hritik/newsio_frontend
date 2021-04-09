import 'Comments.dart';
import 'package:uuid/uuid.dart';

class Feeds {
  static List<Feeds> allFeeds = [];
  String _postId;
  String _title;
  String _textContent;
  DateTime _publishedDate;
  String _userId;
  int _likes;
  List<Comments> _postComments;
  Feeds() {
    _publishedDate = DateTime.now();
    _postId = Uuid().v1();
    _likes = 0;
  }
  //getters

  String get getTitle => _title;
  String get getTextContent => _textContent;
  DateTime get getPublishedDate => _publishedDate;
  String get postId => _postId;

  //Setters
  set setTitle(String value) {
    _title = value;
  }

  set setTextContent(String value) {
    _textContent = value;
  }
}
