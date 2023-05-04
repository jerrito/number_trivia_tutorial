// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  String text;
  bool? found;
  int number;
  String? type;
  String? date;

  Welcome({
    required this.text,
    this.found,
    required this.number,
    this.type,
    this.date,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        text: json["text"],
        found: json["found"],
        number: json["number"],
        type: json["type"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "found": found,
        "number": number,
        "type": type,
        "date": date,
      };
}
