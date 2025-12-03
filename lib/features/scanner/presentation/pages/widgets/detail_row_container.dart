import 'package:flutter/material.dart';

class DetailRowContainer extends StatelessWidget {
  const DetailRowContainer({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontWeight: FontWeight.w700)),
        Text(subTitle, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
