
import 'package:facebook_ui/data/models/publications.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key,required this.publications}) : super(key: key);

  final Publications publications;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.grey);
    
  }
}