import 'package:flutter/material.dart';

import 'module.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key, required this.customModel});

  final CustomModule customModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(
          horizontal: MediaQuery.of(context).size.width * .01),
      width: MediaQuery.of(context).size.width * .45,
      height: MediaQuery.of(context).size.height * .14,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Opacity(
            opacity: 0.85,
            child: Image.network(
              customModel.imageUrl,
              fit: BoxFit.contain,
            ),
          ),
          Center(
            child: Text(
              customModel.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
