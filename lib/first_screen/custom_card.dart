import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final bool hasShadow;

  const CustomCard({
    Key? key,
    this.hasShadow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      width: MediaQuery.of(context).size.width * 0.9111,
      height: MediaQuery.of(context).size.height * 0.0788,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        shadowColor: Colors.pink,
        elevation: hasShadow ? 10 : 0,
        child: Row(
          children: [
            SizedBox(width: 16),
            Image.asset(
              "assets/images/location.png",
              height: 32.07,
              width: 24,
            ),
            SizedBox(width: 19),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("ЦПО Бишкек Парк",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
                SizedBox(
                  height: 4,
                ),
                Text("Пр. Чуй 123, первый этаж",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
