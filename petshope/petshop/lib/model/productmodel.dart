class Productmodel {
  String? status;
  List<Data>? data;

  Productmodel({required this.data, required this.status});
  factory Productmodel.fromJson(Map<String, dynamic> json) {
    return Productmodel(
        data: (json["data"] as List).map((e) => Data.fromJson(e)).toList(),
        status: json["status"]);
  }
}

class Data {
  String? id;
  String? title;
  String? catrgory;
  String? src;
  String? link;
  List<String>? templete;
  String? productName;
  num? price;
  num? actualPrice;
  String? weight;
  String? size;
  List<String>? productDescription;
  num? sideImg;

  Data(
      {required this.id,
      required this.title,
      required this.catrgory,
      required this.src,
      required this.link,
      required this.templete,
      required this.productName,
      required this.price,
      required this.actualPrice,
      required this.weight,
      required this.size,
      required this.productDescription,
      required this.sideImg});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        id: json["_id"],
        title: json["title"],
        catrgory: json["category"],
        src: json["src"],
        link: json["link"],
        templete: List<String>.from(json["template"]),
        productName: json["productName"],
        actualPrice: json["actualPrice"],
        weight: json["weight"],
        size: json["size"],
        productDescription: List<String>.from(json["productDescription"]),
        sideImg: json["sideImg"],
        price: json["price"]);
  }
}
