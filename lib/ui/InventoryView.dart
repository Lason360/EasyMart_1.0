import "package:easy_mart/Services/database_service.dart";
import "package:easy_mart/models/inventory_item.dart";
import "package:flutter/material.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

class InventoryPage extends StatefulWidget{
  const InventoryPage({super.key});

  @override
  State<InventoryPage> createState() => _InventoryPageState();

}

class _InventoryPageState extends State<InventoryPage>{
  final DatabaseService _databaseService = DatabaseService();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }

  Widget _buildUI(){
    return SafeArea(
      child: Column(
        children: [
          _messagesListView(),
        ],
      )
    );
  }

  Widget _messagesListView() {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.8,
    width: MediaQuery.of(context).size.width,
    child: StreamBuilder(
      stream: _databaseService.getInventoryItems(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: Text("Error fetching data"),
          );
        }
        List<DocumentSnapshot> inventories = snapshot.data!.docs;
        if (inventories.isEmpty) {
          return const Center(
            child: Text("No inventory"),
          );
        }
        return ListView.builder(
          itemCount: inventories.length,
          itemBuilder: (context, index) {
            print(inventoryItem);
            return const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: ListTile(
                // Customize your LisdtTile here using inventoryItem
                // title: Text(inventoryItem.name),
                // subtitle: Text(inventoryItem.description),
                // Add more ListTile properties as needed
              ),
            );
          },
        );
      },
    ),
  );
}
}