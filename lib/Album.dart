import 'package:http/http.dart' as http;
import 'dart:convert';
Future<Album> fetchAlbum() async {
  final res = await http.get('https://jsonplaceholder.typicode.com/albums/1');
  if (res.statusCode == 200) {
    return Album.fromJson(json.decode(res.body));
  } else {
    throw Exception('Failed to load album');
  }
}



class Album{
  final int userId;
  final int id;
  final String title;

  Album({this.userId, this.id, this.title});

  factory Album.fromJson(Map<String,dynamic>json){
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}