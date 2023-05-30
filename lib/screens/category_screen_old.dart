import 'package:flutter/material.dart';
import 'package:pinoyrecipies/components/category_item.dart';
import 'package:pinoyrecipies/data/categorylist.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pinoy Recipies'),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 2,
        //   crossAxisSpacing: 10,
        //   mainAxisSpacing: 10,
        // ),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 3 / 2,
        ),
        children: CATEGORYLIST
            .map(
              (item) => CategoryItem(category: item),
            )
            .toList(),
      ),
      // body: ListView.builder(
      //   scrollDirection: Axis.horizontal,
      //   itemBuilder: ((_, index) => CategoryItem(
      //         category: CATEGORYLIST[index],
      //       )),
      //   itemCount: CATEGORYLIST.length,
      // ),
    );
  }
}
