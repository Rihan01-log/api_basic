class Datas {
  List<dynamic>? effectChanges;
  List<Effectentries>? effectetries;
  int? id;

  Datas({this.effectChanges, required this.effectetries, required this.id});

  factory Datas.fromJson(Map<String, dynamic> json) {
    return Datas(
        id: json['id'],
        effectetries: (json['effect_entries'] as List)
            .map((e) => Effectentries.fromJson(e))
            .toList());
  }
}

class Effectentries {
  String? effect;
  Language? language;
  String? shorteffect;

  Effectentries(
      {required this.effect,
      required this.shorteffect,
      required this.language});

  factory Effectentries.fromJson(Map<String, dynamic> json) {
    return Effectentries(
        effect: json['effect'],
        shorteffect: json['short_effect'],
        language: Language.fromJson(json["language"]));
  }
}

class Language {
  String? name;
  String? url;

  Language({required this.name, required this.url});

  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(name: json["name"], url: json["url"]);
  }
}
