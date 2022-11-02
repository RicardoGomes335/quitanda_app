class ItemModel {
  String itemName;
  String imgUrl;
  String unit;
  double price;
  String description;

  // Construtor do Model
  ItemModel({
    required this.description,
    required this.itemName,
    required this.imgUrl,
    required this.unit,
    required this.price,
  });
}
