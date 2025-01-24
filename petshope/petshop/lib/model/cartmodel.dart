class Cartmodel {
  String? status;
  List<CartData>? cartData;
  Cartmodel({required this.status, required this.cartData});
  factory Cartmodel.fromJson(Map<String, dynamic> json) {
    return Cartmodel(
        status: json['status'],
        cartData:
            (json['data'] as List).map((e) => CartData.fromJson(e)).toList());
  }
}

class CartData {
  String? id;
  String? title;
  String? catogery;
  String? src;
  String? price;

  CartData(
      {required this.id,
      required this.title,
      required this.catogery,
      required this.price,
      required this.src});
  factory CartData.fromJson(Map<String, dynamic> json) {
    return CartData(
        id: json['_id'],
        title: json['title'],
        catogery: json['category'],
        price: json['actualPrice'],
        src: json['src']);
  }
}
