class Userin {
  int? id;
  String? firstname;
  String? lastname;
  String? email;
  String? birthdate;
  Login? login;
  Address? address;
  Userin(
      {this.id,
      this.firstname,
      this.email,
      this.birthdate,
      this.lastname,
      this.login,
      this.address});

  factory Userin.formJson(Map<String, dynamic> json) {
    return Userin(
        id: json['id'],
        firstname: json['firstname'],
        lastname: json['lastname'],
        email: json['email'],
        birthdate: json['birthDate'],
        login: Login.fromJson(json['login']),
        address: Address.fromJson(json['address']));
  }
}

class Login {
  String? uuid;
  String? username;
  String? password;
  String? md5;
  String? sha1;
  String? registered;

  Login(
      {this.uuid,
      this.username,
      this.password,
      this.md5,
      this.sha1,
      this.registered});

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
        uuid: json['uuid'],
        username: json['username'],
        password: json['password'],
        md5: json['md5'],
        sha1: json['sha1'],
        registered: json['registered']);
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geodateodata? geo;
  Address({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
        street: json['street'] as String?,
        suite: json['suite'],
        city: json['city'],
        zipcode: json['zipcode'],
        geo: Geodateodata.fromJson(json['geo']));
  }
}

class Geodateodata {
  String? lat;
  String? lng;

  Geodateodata({this.lat, this.lng});
  factory Geodateodata.fromJson(Map<String, dynamic> json) {
    return Geodateodata(lat: json['lat'], lng: json['lng']);
  }
}
