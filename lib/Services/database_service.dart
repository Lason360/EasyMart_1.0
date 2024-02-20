import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_mart/models/inventory_item.dart';

const String inventory_collection_ref = "inventory";

class DatabaseService {
  
  final _firestore = FirebaseFirestore.instance;

  late final CollectionReference _invenRef;

  DatabaseService() {
    _invenRef = _firestore.collection(inventory_collection_ref).withConverter<inventoryItem>(
      fromFirestore: (snapshots, _) => inventoryItem.fromJson(
        snapshots.data()!,
      ),
      toFirestore: (inventoryItem, _) => inventoryItem.toJson(),
    );
  }
  Stream<QuerySnapshot> getInventoryItems(){
    return _invenRef.snapshots();
  }

  void addInven(inventoryItem item) async{
    _invenRef.add(item);
  }

}
