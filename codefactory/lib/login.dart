import 'package:flutter/material.dart';
import 'siginup.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> { 
  final emailinput=TextEditingController();
  final passinput=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
          Image.asset("images/login.png",height: 300, width: 300,),
          SizedBox(height: 10,), 
          Text("Log in",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Text("Login with social networks"),
          SizedBox(height: 10,), 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(8), ),
              child:Center( child: Icon(Icons.facebook,color: Colors.white,),), ),
           SizedBox(width: 8,),
           Container(
               height: 50,
               width: 50,
              decoration: BoxDecoration(
               color: Colors.blue[50],
            borderRadius: BorderRadius.circular(8),
            ),
            child:Center( child: Icon(Icons.camera_alt,color: Colors.white,),),
          ),
          SizedBox(width: 8,),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(8),
            ),
            child:Center( child: Icon(Icons.g_mobiledata,color: Colors.white,),),
          ),
       ], ),
       SizedBox(height: 20,),
      SizedBox(
        width: 400, // login screen with email &password 
        child: TextField(
          controller:emailinput ,
          decoration: InputDecoration(
            hintText: "Email",
            border: OutlineInputBorder()
          ),
        ),
      ),
      SizedBox(height: 8,),
      SizedBox(
        width: 400,
        child: TextField(
          controller:passinput ,
          decoration: InputDecoration(
            hintText: "password",
            border: OutlineInputBorder()
          ),
        ),
      ),

     TextButton(
      onPressed: (){}, 
      child: Text("forget password?"),),

    ElevatedButton(
      onPressed: (){},
       style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepOrange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)), 
        minimumSize: Size(400, 50),
       ),
        child: Text("Log in ",style:TextStyle(color:Colors.white,)),
       ), 
      SizedBox(height: 5,),
       TextButton(onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Siginup()),);
       },child: Text("sign up "),),
       
      ],),

    );
  }
}