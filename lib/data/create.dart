import 'package:flutter/material.dart';
import 'package:flutter_backend/services/api.dart';

class CreateData extends StatefulWidget {
  const CreateData({super.key});

  @override
  State<CreateData> createState() => _CreateDataState();
}

class _CreateDataState extends State<CreateData> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController priceController = TextEditingController();
    TextEditingController descController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'name'),
            ),
            TextField(
              controller: priceController,
              decoration: InputDecoration(hintText: 'price'),
            ),
            TextField(
              controller: descController,
              decoration: InputDecoration(hintText: 'description'),
            ),
            TextButton(
              onPressed: () {
                var data = {
                  'pname': nameController.text,
                  'pprice': priceController.text,
                  'pdesc': descController.text,
                };
                Api.addProduct(data);
              },
              child: Text('Create Data'),
            ),
          ],
        ),
      ),
    );
  }
}
