import 'package:assignment7/screens/course_details_screen.dart';
import 'package:flutter/material.dart';

//here where the courses and serach with catagory are displayed

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello')),
      body: ListView(
        children: [
          //a column for all the components in page
          Center(
            child: Column(
              spacing: 16,
              children: [
                //row for the name and notification image
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Container(
                        width: 350,
                        height: 75,
                        child: Text(
                          'Ayman Alzahrani',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      width: 45,
                      height: 100,
                      alignment: Alignment.topCenter,

                      child: Image.asset('assets/icons/notification.png'),
                    ),
                  ],
                ),
                //search text field
                Container(
                  width: 400,
                  height: 60,
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    //catagory row contains 4 buttons
                    child: Row(
                      spacing: 8,
                      children: [
                        Text('Catagory: '),

                        Container(
                          width: 75,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: Text(
                              '#CSS',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 75,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: Text(
                              '#UK',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: Text(
                              '#Swift',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 75,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: Text(
                              '#UI',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                  //InkWell for each container that have courses to go to course detailes page 
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CourseDetailsScreen()),
                    );
                  },
                  child: Container(
                    width: 400,
                    height: 425,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      spacing: 16,
                      children: [
                        Container(
                          width: 400,
                          height: 270,
                          child: Stack(
                            children: [
                              Container(
                                width: 400,
                                height: 225,
                                child: Image.asset('assets/images/uiCourseImage.png'),
                              ),
                              Container(
                                width: 380,
                                height: 270,
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

                        Container(
                          width: 380,
                          height: 125,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '3 h 30 min',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 88, 186, 9),
                                ),
                              ),
                              Text(
                                'UI',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 60, 58, 54),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Advanced mobile interface design',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


                    //since the figma have only one page for the course detailes they all go to the same page if the containers are clicked but all what neede is context for the course detials the code is ready
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CourseDetailsScreen()),
                    );
                  },
                  child: Container(
                    width: 400,
                    height: 425,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      spacing: 16,
                      children: [
                        Container(
                          width: 400,
                          height: 270,
                          child: Stack(
                            children: [
                              Container(
                                width: 400,
                                height: 225,
                                child: Image.asset('assets/images/htmlScreen.png'),
                              ),
                              Container(
                                width: 380,
                                height: 270,
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

                        Container(
                          width: 380,
                          height: 125,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '3 h 30 min',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 88, 186, 9),
                                ),
                              ),
                              Text(
                                'HTML',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 60, 58, 54),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Advanced web applications',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
