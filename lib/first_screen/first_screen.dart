import 'package:flutter/material.dart';
import 'package:test_app/first_screen/custom_card.dart';
import 'package:test_app/first_screen/custom_container.dart';
import 'package:test_app/first_screen/custom_main_card.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          "Добавить шаблон",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.0578,
              width: MediaQuery.of(context).size.width * 0.9111,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomMainCard(
                    title: "Терминал",
                  ),
                  CustomMainCard(
                    title: "Офисы",
                    isActive: true,
                  ),
                ],
              ),
            ),
            const CustomContainer(),
            CustomCard(),
            CustomContainer(
              hasElev: true,
            ),
            CustomCard(
              hasShadow: true,
            )
          ],
        ),
      ),
    );
  }
}
