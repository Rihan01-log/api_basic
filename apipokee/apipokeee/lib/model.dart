class Pokee3 {
  int? baseexperience;
  List<Abilities>? abilities;

  Pokee3({required this.abilities, required this.baseexperience});

  factory Pokee3.fromJson(Map<String, dynamic> json) {
    return Pokee3(
        abilities: (json['abilities'] as List)
         
            .map((e) => Abilities.fromJson(e))
            .toList(),
        baseexperience: json['base_experience']);
  }
}

class Abilities {
  Ability? ability;
  bool? ishidden;
  int? slot;

  Abilities(
      {required this.ability, required this.ishidden, required this.slot});

  factory Abilities.fromJson(Map<String, dynamic> json) {
    return Abilities(
        ability: Ability.fromJson(json['ability']),
        ishidden: json['is_hidden'],
        slot: json['slot']);
  }
}

class Ability {
  String? name;
  String? url;

  Ability({required this.name, required this.url});

  factory Ability.fromJson(Map<String, dynamic> json) {
    return Ability(name: json['name'], url: json['url']);
  }
}
