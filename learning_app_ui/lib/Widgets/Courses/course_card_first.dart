import 'package:flutter/material.dart';

class CourseCardFirst extends StatelessWidget {
  const CourseCardFirst({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });

  final String imagePath;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              width: 2, color: const Color.fromARGB(255, 190, 186, 179)),
          borderRadius: BorderRadius.circular(8)),
      child: Column(children: [
        Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 248, 242, 238),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8))),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Image.asset(
                      imagePath,
                      width: 350,
                      height: 200,
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 50,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                        width: 64,
                        height: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 101, 170, 234)),
                        child: const Center(
                            child: Text(
                          "\$50",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
            height: 90,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text("3 h 30 min",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24))),
                  Align(alignment: Alignment.centerLeft, child: Text(subTitle)),
                ],
              ),
            ))
      ]),
    );
  }
}
