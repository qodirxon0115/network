import 'dart:convert';

Myself myselfFromJson(String str) => Myself.fromJson(json.decode(str));

String myselfToJson(Myself data) => json.encode(data.toJson());

class Myself {
  String login;
  int id;
  String url;
  String htmlUrl;
  String type;
  String name;
  int followers;
  int following;

  Myself({
    required this.login,
    required this.id,
    required this.url,
    required this.htmlUrl,
    required this.type,
    required this.name,
    required this.followers,
    required this.following,
  });

  factory Myself.fromJson(Map<String, dynamic> json) => Myself(
        login: json["login"],
        id: json["id"],
        url: json["url"],
        htmlUrl: json["html_url"],
        type: json["type"],
        name: json["name"],
        followers: json["followers"],
        following: json["following"],
      );

  Map<String, dynamic> toJson() => {
        "login": login,
        "id": id,
        "url": url,
        "html_url": htmlUrl,
        "type": type,
        "followers": followers,
        "following": following,
      };
}
