class Userdetails {
  int? id;
  String? firstname;
  String? lastname;
  String? email;

  Userdetails({this.id, this.firstname, this.lastname, this.email});
  factory Userdetails.fromJson(Map<String, dynamic> json) {
    return Userdetails(
        id: json['id'] ?? 0,
        firstname: json['firstname'] ?? 'no',
        lastname: json['lastname'] ?? 'no',
        email: json['email'] ?? 'no');
  }
}
