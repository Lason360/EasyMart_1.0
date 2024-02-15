class inventoryItem {
  int ID;
  String barCode;
  String name;
  int buyingPrice;
  int sellingPrice;
  int stock;

  inventoryItem({
    required this.ID,
    required this.barCode,
    required this.name,
    required this.buyingPrice,
    required this.sellingPrice,
    required this.stock,
  });

  inventoryItem.fromJson(Map<String, Object?> json)
    : this(
        ID: json['ID']! as int,
        barCode: json['Barcode']! as String,
        name: json['Name']! as String,
        buyingPrice: json['Buying_Price']! as int,
        sellingPrice: json['Selling_Price']! as int,
        stock: json['Stock']! as int,
    );

  inventoryItem copyWith({
    int? ID,
    String? barCode,
    String? name,
    int? buyingPrice,
    int? sellingPrice,
    int? stock,
  }){
    return inventoryItem(ID: ID ?? this.ID, barCode: barCode ?? this.barCode, name: name ?? this.name, buyingPrice : buyingPrice ?? this.buyingPrice, sellingPrice: sellingPrice ?? this.sellingPrice, stock: stock ?? this.stock);
  }

  Map<String,Object?> toJson() {
    return{
      'ID': ID,
      'Barcode' : barCode,
      'Name' : name,
      'Buying_Price' : buyingPrice,
      'Selling_Price' : sellingPrice,
      'Stock' : stock,

    };
  }

}