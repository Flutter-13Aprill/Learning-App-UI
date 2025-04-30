import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});
//here where the course detailes screen 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Container(width: 25,height: 25,decoration: BoxDecoration(border: Border.all(color: Colors.black,),shape: BoxShape.circle),
        child: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,weight: 10,),style: IconButton.styleFrom( )),
      ),
        title: Center(
          child: Text(
            'HTML',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      //column for the contents
      body: Center(child: Column(children: [


        Container(
                    width: 400,
                    height: 800,
               
               //for the image and stack for the picture and the price with the texts
                    child: Column(
                      spacing: 16,
                      children: [
                        Container(
                          width: 400,
                          height: 400,
                          child: Stack(
                            children: [
                              Container(
                                width: 400,
                                height: 375,
                                child: Image.asset('assets/images/htmlDetailScreen.png'),
                              ),
                              Container(
                                width: 380,
                                height: 400,
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  width: 75,
                                  height: 30,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                    ),
                                    child: Text(
                                      '\$ 50',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      //text container and column
                        Container(
                          width: 380,
                          height: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'About Course',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 60, 58, 54),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'You can launch a new career in web develop-ment today by learning HTML & CSS. You don\'t need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 51, 51, 51),
                                  fontSize: 15,
                                ),
                              ),
                               Text(
                                'Duration',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 60, 58, 54),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '1 h 30 min',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 51, 51,51),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),



      ],),),
    );
  }
}
