import 'dart:convert';

ActionsModel actionsModelFromJson(String str) =>
    ActionsModel.fromJson(json.decode(str));

String actionsModelToJson(ActionsModel data) => json.encode(data.toJson());

class ActionsModel {
  final int? groupId;
  final String? name;
  final List<Product>? products;
  final String? status;
  final String? cover;
  final String? id;
  final String? logoicom;

  ActionsModel(
      {this.groupId,
      this.name,
      this.products,
      this.status,
      this.cover,
      this.logoicom,
      this.id});

  ActionsModel copyWith(
          {int? groupId,
          String? name,
          String? id,
          String? logoicom,
          List<Product>? products,
          String? status,
          String? cover}) =>
      ActionsModel(
          logoicom: logoicom ?? this.logoicom,
          groupId: groupId ?? this.groupId,
          id: id ?? this.id,
          name: name ?? this.name,
          products: products ?? this.products,
          status: status ?? this.status,
          cover: status ?? this.cover);

  factory ActionsModel.fromJson(Map<String, dynamic> json) => ActionsModel(
      groupId: json["groupId"],
      id: json["id"],
      logoicom: json["logoicom"],
      name: json["name"],
      products: json["products"] == null
          ? []
          : List<Product>.from(
              json["products"]!.map((x) => Product.fromJson(x))),
      status: json["status"],
      cover: json["cover"]);

  Map<String, dynamic> toJson() => {
        "groupId": groupId,
        "id": id,
        "logoicom": logoicom,
        "name": name,
        "products": products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
        "status": status,
        "cover": cover
      };
}

class Product {
  // final int? id;
  final String? title, id;
  final int? price;
  final List<String>? images;
  final String? status;

  Product({
    this.id,
    this.title,
    this.price,
    this.images,
    this.status,
  });

  Product copyWith({
    String? id,
    String? title,
    int? price,
    List<String>? images,
    String? status,
  }) =>
      Product(
        id: id ?? this.id,
        title: title ?? this.title,
        price: price ?? this.price,
        images: images ?? this.images,
        status: status ?? this.status,
      );

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        images: json["images"] == null
            ? []
            : List<String>.from(json["images"]!.map((x) => x)),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "images":
            images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "status": status,
      };
}

List<ActionsModel> actionrandom = [
  ActionsModel.fromJson({
    "groupId": 1,
    "name": "قطعة أرض",
    "id": "MZAD1",
    "cover":
        "https://bloximages.newyork1.vip.townnews.com/lancasterfarming.com/content/tncms/assets/v3/editorial/a/e8/ae8f6d0a-6642-11e6-8017-e3638a98a8f3/57b75d265fe75.image.jpg?resize=789%2C500",
    "products": [
      {
        "id": "MZAD1",
        "title": "car",
        "price": 23,
        "images": [
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp",
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp"
        ],
        "status": "النشطة"
      }
    ],
    "status": "النشطة",
  }),
  ActionsModel.fromJson({
    "groupId": 1,
    "name": "سيارة للبيع",
    "id": "MZAD2",
    "cover": "https://wallpaperaccess.com/full/257072.jpg",
    "products": [
      {
        "id": "MZAD2",
        "title": "car",
        "price": 23,
        "images": [
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp",
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp"
        ],
        "status": "النشطة"
      },
      {
        "id": "MZAD3",
        "title": "car",
        "price": 23,
        "images": [
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp",
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp"
        ],
        "status": "النشطة"
      },
      {
        "id": "MZAD4",
        "title": "car",
        "price": 23,
        "images": [
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp",
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp"
        ],
        "status": "النشطة"
      }
    ],
    "status": "النشطة",
  }),
  ActionsModel.fromJson({
    "groupId": 1,
    "name": "سيارة للبيع",
    "id": "MZAD7",
    "cover": "https://i.ytimg.com/vi/EwZI-VOSMVs/maxresdefault.jpg",
    "products": [
      {
        "id": "MZAD5",
        "title": "car",
        "price": 23,
        "images": [
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp",
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp"
        ],
        "status": "المباشر"
      },
      {
        "id": "MZAD6",
        "title": "car",
        "price": 23,
        "images": [
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp",
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp"
        ],
        "status": "المباشر"
      },
      {
        "id": "MZAD7",
        "title": "car",
        "price": 23,
        "images": [
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp",
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp"
        ],
        "status": "المباشر"
      }
    ],
    "status": "المباشرة",
  }),
  ActionsModel.fromJson({
    "groupId": 1,
    "name": "مصنع",
    "id": "MZAD8",
    "cover":
        "https://p.turbosquid.com/ts-thumb/Ti/xLzC1v/Mw/refinery_800_0001/jpg/1617355366/300x300/sharp_fit_q85/2e291153021ce773d626f6aeefb5be748e6ac8a5/refinery_800_0001.jpg",
    "products": [
      {
        "id": "MZAD8",
        "title": "car",
        "price": 23,
        "images": [
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp",
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp"
        ],
        "status": "القادمة"
      }
    ],
    "status": "القادمة",
  }),
  ActionsModel.fromJson({
    "groupId": 1,
    "id": "MZAD9",
    "name": "قصر",
    "cover":
        "https://i.pinimg.com/originals/b5/fb/9e/b5fb9e0d3cb8d339d096bd1b36aa7723.jpg",
    "products": [
      {
        "id": "MZAD9",
        "title": "car",
        "price": 23,
        "images": [
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp",
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp"
        ],
        "status": "السابقة"
      }
    ],
    "status": "السابقة",
  }),
  ActionsModel.fromJson({
    "groupId": 1,
    "name": "يخت",
    "id": "MZAD10",
    "cover": "https://img.nauticexpo.com/images_ne/photo-m2/21287-18284009.jpg",
    "products": [
      {
        "id": "MZAD10",
        "title": "car",
        "price": 23,
        "images": [
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp",
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp"
        ],
        "status": "السابقة"
      }
    ],
    "status": "السابقة",
  }),
  ActionsModel.fromJson({
    "groupId": 1,
    "id": "MZAD11",
    "name": "خردة",
    "cover":
        "https://gate.ahram.org.eg/Media/News/2017/1/18/2017-636203407314438490-443.jpg",
    "products": [
      {
        "id": "MZAD11",
        "title": "car",
        "price": 23,
        "images": [
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp",
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp"
        ],
        "status": "النشطة"
      }
    ],
    "status": "النشطة",
  }),
  ActionsModel.fromJson({
    "groupId": 1,
    "id": "MZAD12",
    "name": "كرفانات",
    "cover":
        "https://caravansquares.com/wp-content/uploads/2022/03/car5-1-1024x766.jpg",
    "products": [
      {
        "id": "MZAD12",
        "title": "car",
        "price": 23,
        "images": [
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp",
          "https://images.ctfassets.net/ihx0a8chifpc/GTlzd4xkx4LmWsG1Kw1BB/ad1834111245e6ee1da4372f1eb5876c/placeholder.com-1280x720.png?w=1920&q=60&fm=webp"
        ],
        "status": "النشطة"
      }
    ],
    "status": "النشطة",
  }),
];
