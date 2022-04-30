import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final bool hasElev;

  const CustomContainer({
    Key? key,
    this.hasElev = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(top: 24),
      width: MediaQuery.of(context).size.width * 0.9111,
      height: MediaQuery.of(context).size.height * 0.0788,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white,
        boxShadow: hasElev
            ? [
                BoxShadow(
                  blurRadius: 6,
                  offset: Offset(2, 2),
                )
              ]
            : [],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/location.png",
            height: 32.07,
            width: 24,
          ),
          SizedBox(
            width: 19,
          ),
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
    );
  }
}
