import 'dart:convert';

class BannerData {
  List<Banner> banners;
  String? message;

  BannerData({required this.message, required this.banners});

  factory BannerData.fromJson(Map<String, dynamic> json) {
    return BannerData(
        banners: List<Banner>.from(json['banners']), message: json['message']);
  }

  Map<String, dynamic> toJson() {
    return {'message': message, 'banners': banners};
  }
}


class Banner {
  int? id;
  String? title;
  Addbaner? addbaner;
  int? duration;
  String? starttime;
  String? endtime;
  bool? status;
  List<String>? device;
  bool? isActive;
  String? createdAt;
  int? outlet;
  int? createdby;

  Banner(
      {required this.id,
      required this.title,
      required this.duration,
      required this.starttime,
      required this.endtime,
      required this.status,
      required this.device,
      required this.isActive,
      required this.createdAt,
      required this.outlet,
      required this.createdby,
      required this.addbaner});

  factory Banner.fromJson(Map<String, dynamic> json) {
    return Banner(
        id: json['id'],
        title: json['title'],
        duration: json['duration'],
        starttime: json['startime'],
        endtime: json['endtime'],
        status: json['status'],
        device: json['device'],
        isActive: json['isActive'],
        createdAt: json['createdat'],
        outlet: json['outlet'],
        createdby: json['createdby'],
        addbaner: Addbaner.fromJson(json['adbaner']));
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
    };
  }
}

class Addbaner {
  String? file;
  String? title;

  Addbaner({required this.file, required this.title});

  factory Addbaner.fromJson(Map<String, dynamic> json) {
    return Addbaner(file: json['file'], title: json['title']);
  }

  Map<String, dynamic> toJson() {
    return {"file": file, 'title': title};
  }
}
