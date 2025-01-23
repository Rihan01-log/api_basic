class Loginmodel {
  String? username;
  String? password;
  String? token;
  Loginmodel({required this.username, required this.password, this.token});
  factory Loginmodel.fromJson(Map<String, dynamic> json) {
    return Loginmodel(
        username: json["username"],
        password: json["password"],
        token: json["token"]);
  }

  Map<String, dynamic> toJson() {
    return {"username": username, "password": password};
  }
}
