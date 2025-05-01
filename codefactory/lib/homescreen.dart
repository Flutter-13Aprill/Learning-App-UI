import 'package:flutter/material.dart';
import 'prodictdetail.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final coursecon=TextEditingController(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16), 
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Text("hello"), 
                    Text("Juana Antonieta", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),), 
                    SizedBox(height: 16,), 
                   ],
                ),
                IconButton(onPressed: (){}, icon:Icon(Icons.notifications_none)), 
              ],
            ),

            TextField(
              controller: coursecon,  // display courses list  
              decoration: InputDecoration(
                hintText: "search course",
                prefixIcon: Icon(Icons.search), 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Category:"),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 142, 202, 210),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), 
                   minimumSize: Size(3, 11)),
                   child: Text("#css" , style: TextStyle(color:Colors.white ),)
                   
                   ),

                  ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 142, 202, 210),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), 
                   minimumSize: Size(3, 11)),
                   child: Text("#ux" , style: TextStyle(color:Colors.white ),)
                   ),
                  ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 142, 202, 210),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), 
                   minimumSize: Size(3, 11)),
                   child: Text("#swift" , style: TextStyle(color:Colors.white ),)
                   ),

                  ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 142, 202, 210),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), 
                   minimumSize: Size(3, 11)),
                   child: Text("#ui" , style: TextStyle(color:Colors.white ),)
                   ),
              ],
            ),
             
            SizedBox(height: 15,),
           
                Container(
                // margin: EdgeInsets.all(16),
                 padding: EdgeInsets.all(9),
                 decoration: BoxDecoration(
                   color: const Color.fromARGB(255, 238, 217, 217),
                   border: Border.all(color: Colors.grey),
                   borderRadius: BorderRadius.circular(12),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.2),
                       blurRadius: 6,
                       offset: Offset(0, 3),
                     ),
                   ],
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Stack(
                       children: [
                         ClipRRect(
                           borderRadius: BorderRadius.circular(8),
                           child: Image.asset(
                                 'images/card1.png',
                                  height: 170,
                                  width: double.infinity,
                                  fit: BoxFit.contain,
                                              ),
                                   ),
                         Positioned(
                           bottom: 8,
                           right: 8,
                           child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '\$50',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                           ),
                         ),
                       ],
                     ),
                     SizedBox(height: 10),
                     Divider(height: 1,color: Colors.white,),
                     Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     SizedBox(height: 4),
                     Text(
                       '3 h 30 min',
                       style: TextStyle(color: const Color.fromARGB(255, 81, 124, 5), fontSize: 12),
                     ),
                     Text(
                       'UI',
                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                     ),
                     Text(
                       'Advanced mobile interface design',
                       style: TextStyle(color: Colors.grey[700]),
                     ),
                    ]),
                 ),],
                 ),
               ),
             
              SizedBox(height: 15,),

                Container(
                // margin: EdgeInsets.all(16),
                 padding: EdgeInsets.all(9),
                 decoration: BoxDecoration(
                   color: const Color.fromARGB(255, 230, 232, 245),
                   border: Border.all(color: Colors.grey),
                   borderRadius: BorderRadius.circular(12),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.2),
                       blurRadius: 6,
                       offset: Offset(0, 3),
                     ),
                   ],
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Stack(
                       children: [
                         ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)
                          ),
                           child: Image.asset(
                'images/card2.png',
                height: 170,
                width: double.infinity,
                fit: BoxFit.contain,
                           ),
                         ),
                         Positioned(
                           bottom: 10,
                           right: 10,
                           child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '\$50',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                           ),
                         ),
                       ],
                     ),

                     Divider(height: 1,color: Colors.white,),
                     Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     SizedBox(height: 10),
                     Text(
                       '3 h 30 min',
                       style: TextStyle(color: const Color.fromARGB(255, 81, 124, 5), fontSize: 12),
                     ),
                     SizedBox(height: 4),
                     
                     TextButton(
                       onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Prodictdetail()),);
                       },
                      child:Text("HTML", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black)),
                     ),
                     Text(
                       'Advanced mobile interface design',
                       style: TextStyle(color: Colors.grey[700]),
                     ),
                   ]),
                     )
                   ],
                 ),
               ),
          ]),
        ),
        ),
  ); 
  }
}