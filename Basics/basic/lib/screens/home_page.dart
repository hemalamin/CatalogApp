import 'package:basic/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;
  final String name = "Hemal";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    // ignore: unused_local_variable
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    final productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            // ignore: unnecessary_null_comparison
            (CatalogModel.items.length != null && CatalogModel.items.isNotEmpty)
                ? GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      final item = CatalogModel.items[index];
                      return Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: GridTile(
                            header: Container(
                              // ignore: sort_child_properties_last
                              child: Text(
                                item.name,
                                style: const TextStyle(color: Colors.white),
                              ),
                              padding: const EdgeInsets.all(10),
                              decoration:
                                  const BoxDecoration(color: Colors.deepPurple),
                            ),
                            // ignore: sort_child_properties_last
                            child: Image.network(item.image),
                            footer: Container(
                              // ignore: sort_child_properties_last
                              child: Text(
                                item.price.toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: Colors.deepPurpleAccent),
                            ),
                          ));
                    },
                    itemCount: CatalogModel.items.length,
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
      ),
      drawer: const MyDrawer(),
    );
  }
}