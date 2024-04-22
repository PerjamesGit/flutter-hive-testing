class Order {
  String? tableNo;
  String? orderNo;
  String? pax;
  String? items;
  String? items1;
  String? items2;
  String? items3;
  String? items4;
  String? items5;
  String? items6;
  String? items7;
  String? items9;
  String? items10;

  Order({
    required this.tableNo,
    required this.orderNo,
    required this.pax,
    required this.items,
    required this.items1,
    required this.items2,
    required this.items3,
    required this.items4,
    required this.items5,
    required this.items6,
    required this.items7,
    required this.items9,
    required this.items10,
  });

  Order.fromJson(dynamic json) {
    tableNo = json["tableNo"];
    orderNo = json["orderNo"];
    pax = json["pax"];
    items = json["items"];
    items1 = json["items1"];
    items2 = json["items2"];
    items3 = json["items3"];
    items4 = json["items4"];
    items5 = json["items5"];
    items6 = json["items6"];
    items7 = json["items7"];
    items9 = json["items9"];
    items10 = json["items10"];
  }

  Map<String, dynamic> toJson() {
    return {
      "tableNo": tableNo,
      "orderNo": orderNo,
      "pax": pax,
      "items": items,
      "items1": items1,
      "items2": items2,
      "items3": items3,
      "items4": items4,
      "items5": items5,
      "items6": items6,
      "items7": items7,
      "items9": items9,
      "items10": items10,
    };
  }
}
