import 'package:flutter/material.dart';
import 'homescreen.dart';
class Siginup extends StatefulWidget {
  const Siginup({super.key});

  @override
  State<Siginup> createState() => _SiginupState();
}

class _SiginupState extends State<Siginup> {
  final namecon=TextEditingController();
  final emailcon=TextEditingController();
  final passwordcon=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/siginup.png", height: 300, width: 300,),
          Text("Sign up",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Text("Create your account"),
          SizedBox(height: 10,), 
           SizedBox(
            width: 400,
             child: TextField(
              controller:namecon ,
              decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(),
              ),
             ),
           ),
           SizedBox(height: 8,),
           SizedBox(
            width: 400,
             child: TextField(
              controller:emailcon ,
              decoration: InputDecoration(
                hintText: "E-mail",
                border: OutlineInputBorder(),
              ),
             ),
           ),
           SizedBox(height: 8,),
           SizedBox(
            width: 400,
             child: TextField(
              controller:passwordcon ,
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
             ),
           ), 
SizedBox(height: 10,),
      ElevatedButton(
      onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Homescreen()),);
      },
       style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepOrange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)), 
       maximumSize: Size(400, 50),
       ),
        child: Text("Sign up",style:TextStyle(color:Colors.white,)),
       ),
       SizedBox(height: 10,),

      TextButton(onPressed: (){
       Navigator.pop(context);
      }, child: Text("log in"))
        ],
      ),
    );
  }
}