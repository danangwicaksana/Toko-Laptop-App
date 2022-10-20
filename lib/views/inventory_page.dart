import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:inventory_app/models/inventory.dart';
import 'package:inventory_app/providers/firestore_service.dart';

class InventoryPage extends StatefulWidget {
  const InventoryPage({super.key, this.inventory, this.id});

  final Inventory? inventory;
  final String? id;

  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  late TextEditingController nameController;
  late TextEditingController deskripsiController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    deskripsiController = TextEditingController();

    if (widget.inventory != null) {
      nameController.text = widget.inventory!.name;
      deskripsiController.text = widget.inventory!.description;
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    deskripsiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Isi Data Barang'),
        actions: [
          IconButton(
              onPressed: () async {
                if (widget.inventory != null) {
                  await FirestoreService.editinventory(
                    Inventory(
                        name: nameController.text,
                        description: deskripsiController.text),
                    widget.id!,
                  );
                } else {
                  await FirestoreService.addInventory(Inventory(
                      name: nameController.text,
                      description: deskripsiController.text));
                }

                Navigator.pop(context);
              },
              icon: Icon(Icons.check))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Masukkan nama barang mu',
                label: Text('Nama Barang'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: deskripsiController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                hintText: 'Masukkan deskripsi barang',
                label: Text('Deskripsi Barang'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
