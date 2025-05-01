import 'dart:ui';
import 'package:flutter/material.dart';
import 'homescreen.dart';
class Prodictdetail extends StatefulWidget {
  const Prodictdetail({super.key});

  @override
  State<Prodictdetail> createState() => _ProdictdetailState();
}

class _ProdictdetailState extends State<Prodictdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                Navigator.pop(context); 
                  }
                  , icon: Icon(Icons.arrow_back, size: 28),),
                 
                   Text( 'HTML', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                
                  SizedBox(width: 28),
                ],
              ),
              SizedBox(height: 20),
              Stack(
                children: [     
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/product.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(   // Display course list on home screen 
                    bottom: 10,
                    right: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "\$ 50",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "About the course",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "You can launch a new career in web development today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.",
                style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 0, 0, 0),wordSpacing: 4),
              ),
              SizedBox(height: 20),
              Text(
                "Duration",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 6),
              Text(
                "1 h 30 min",
                style: TextStyle(color: Colors.grey[700]),
              ),
              SizedBox(height: 50,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Add to cart",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color:Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
  
