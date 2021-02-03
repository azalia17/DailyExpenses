import 'package:flutter/material.dart';
import 'package:dailyexpenses/palette.dart';

class CategoryContainer extends StatefulWidget {
  String image;
  String name;

  CategoryContainer({this.image, this.name});

  @override
  _CategoryContainerState createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 25.0),
            Image(image: AssetImage(widget.image,
        ),
        width: 45.0,
        height: 45.0,
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Text(
          widget.name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
          ),
        ),)
        ]
        ),
      ],
    );
  }
}
