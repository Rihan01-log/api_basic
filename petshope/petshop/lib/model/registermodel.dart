class Registermodel {
  String? name;
  String? username;
  String? password;
  String? email;
  String? token;

  Registermodel(
      {required this.name,
      required this.username,
      required this.password,
      required this.email});

  factory Registermodel.fromJson(Map<String, dynamic> json) {
    return Registermodel(
        name: json['name'],
        password: json['password'],
        email: json['email'],
        username: json['username']);
  }

  Map<String,dynamic>toJson(){
    return {
      'name':name,
      'username':username,
      'email':email,
      'password':password
    };
  }
}
