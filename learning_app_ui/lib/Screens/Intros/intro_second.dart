import 'package:flutter/material.dart';

class IntroSecond extends StatelessWidget {
  const IntroSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Column(children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 248, 242, 238),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Image.asset(
                            "assets/images/Intro_page2.png",
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
                    )
                  ],
                ),
              ),
              const SizedBox(
                  height: 180,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Text("Find a course ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24))),
                        Align(
                            alignment: Alignment.center,
                            child: Text("for you",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24))),
                        SizedBox(
                          height: 16,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                                "Quarantine is the perfect time to spend your ")),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                                "day learning something new, from anywhere!")),
                      ],
                    ),
                  ))
            ]),
          ),
        )
      ],
    );
  }
}
