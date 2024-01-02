import 'package:flutter/material.dart';
import 'custom_item.dart';
import 'dummy_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Home Page'),
        ),
        body: GridView.builder(
            itemCount: dummyData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
            ),
            itemBuilder: (context, index) {
              return CustomItem(customModel: dummyData[index]);
            }));
  }
}
