import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "HTML",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 2, color: const Color.fromARGB(255, 190, 186, 179)),
            ),
            child: Center(
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_sharp)),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: SizedBox(
                  child: Image.asset(
                "assets/images/product_detail.png",
                width: 375,
                height: 250,
              )),
            ),
            const SizedBox(height: 24),
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
            const SizedBox(height: 24),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "About the course",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            const SizedBox(height: 8),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                """You can launch a new career in web develop-
ment today by learning HTML & CSS. You don't need a computer science degree or expensive software.
 All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.""",
              ),
            ),
            const SizedBox(height: 24),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Duration",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "1 h 30 min",
                  style: TextStyle(),
                )),

const SizedBox(height: 64),
            Center(
              child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 343,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromARGB(255, 227, 86, 42)),
                    child: const Center(
                      child: Text(
                        "Add to cart",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
