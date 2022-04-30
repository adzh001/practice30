import 'package:flutter/material.dart';

class CustomMainCard extends StatelessWidget {
  final String? title;
  final bool? isActive;

  const CustomMainCard({
    Key? key,
    this.title,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.4333,
      height: MediaQuery.of(context).size.height * 0.0473,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: isActive == true ? Color(0xffF1229E) : Colors.white,
      ),
      child: Text(
        title ?? "123",
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
      ),
    );
  }
}
