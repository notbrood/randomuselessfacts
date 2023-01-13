import 'dart:convert';

class Quote {
  Quote({
    this.id,
    this.text,
    this.source,
    this.sourceUrl,
    this.language,
    this.permalink,
  });

  String? id;
  String? text;
  String? source;
  String? sourceUrl;
  String? language;
  String? permalink;

  Quote copyWith({
    String? id,
    String? text,
    String? source,
    String? sourceUrl,
    String? language,
    String? permalink,
  }) =>
      Quote(
        id: id ?? this.id,
        text: text ?? this.text,
        source: source ?? this.source,
        sourceUrl: sourceUrl ?? this.sourceUrl,
        language: language ?? this.language,
        permalink: permalink ?? this.permalink,
      );

  factory Quote.fromRawJson(String str) => Quote.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Quote.fromJson(Map<String, dynamic> json) => Quote(
    id: json["id"],
    text: json["text"],
    source: json["source"],
    sourceUrl: json["source_url"],
    language: json["language"],
    permalink: json["permalink"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "text": text,
    "source": source,
    "source_url": sourceUrl,
    "language": language,
    "permalink": permalink,
  };
}
