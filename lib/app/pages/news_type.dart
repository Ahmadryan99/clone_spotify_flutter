import 'package:flutter/material.dart';

class NewsType extends StatelessWidget {
  final String newsType;
  final bool isSelected;
  NewsType({required this.newsType, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 48),
          child: Text(newsType,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: isSelected ? Color(0xff42C83C) : Colors.black)),
        ),
       
      ],
    );
  }
}
 
