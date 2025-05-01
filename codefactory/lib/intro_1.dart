import 'package:flutter/material.dart';
import 'login.dart';
class Intro1 extends StatefulWidget {
  const Intro1({super.key});

  @override
  State<Intro1> createState() => _Intro1State();
}
class _Intro1State extends State<Intro1> { // second screen use pageviwe so there is 3 screen 
  PageController cotrolpage = PageController(); 
  int index=0 ; 
 Widget bulldindicator(){
    return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(top:40),
                  child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children:List.generate(3, (i){
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: index==i ?16:8,
                height: 8,
                decoration: BoxDecoration(
                color:index==i?Colors.lightBlueAccent:Colors.grey,
                borderRadius: BorderRadius.circular(4), 
                ),
              );
            })

              ),
                         ),]
                         ),
                         ); 
                         }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 22, 20),
          child: ListTile(
            trailing: GestureDetector(
              onTap: (){
                cotrolpage.jumpToPage(3); 
              },
              child: Text("skip" ,style: TextStyle(fontSize: 15),),//onbording screen with next buttun and skip 
              ),
        ),
        ),
        ),

        body:
              Expanded(
                child: PageView( // scroll page horisently 
                  controller: cotrolpage,
                  onPageChanged: (i){
                    setState(() {
                      index=i ; 
                    });
                  },
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       Image.asset("images/intro1.png",height: 300,width: 300,fit: BoxFit.contain,),
                        SizedBox(height: 20,),
                       Text("Learn anytime ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                       Text("and anywhere",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                        SizedBox(height: 6,),
                        Text("Quarantine is the perfect time to spend your"),
                        Text("day learning something new, from anywhere!"),
                         bulldindicator(),
                         SizedBox(height: 100,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(400, 50),
                            backgroundColor: Colors.deepOrange, 
                          ),
                          onPressed: (){
                           cotrolpage.nextPage(duration: Duration(milliseconds: 300), curve:Curves.easeIn,);
                          }, 
                          child: Text("Next",style: TextStyle(
                            color: Colors.white,fontSize: 20
                          ),)),
                      ],),
                
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       Image.asset("images/intro2.png",height: 300,width: 300,fit: BoxFit.contain,), 
                       Text("Find a course ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                       Text("for you",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                       SizedBox(height: 6,),
                       Text("Quarantine is the perfect time to spend your"),
                       Text(" day learning something new, from anywhere!"), 
                       bulldindicator(),
                       SizedBox(height: 100,),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(400, 50),
                            backgroundColor: Colors.deepOrange, 
                          ),
                          onPressed: (){
                           cotrolpage.nextPage(duration: Duration(milliseconds: 300), curve:Curves.easeIn,);
                          }, 
                          child: Text("Next",style: TextStyle(
                            color: Colors.white,fontSize: 20
                          ),
                          ),
                          ),
                       ],),
                      
                      Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       Image.asset("images/intro3.png",height: 300,width: 300,fit: BoxFit.contain,), 
                       Text("Improve your skills",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                       Text("Quarantine is the perfect time to spend your"),
                       Text(" day learning something new, from anywhere!"), 
                        bulldindicator(),
                        SizedBox(height: 100,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(400, 50),
                            backgroundColor: Colors.deepOrange, 
                          ),
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()),);                         }, 
                          child: Text("Let's start",style: TextStyle(
                            color: Colors.white,fontSize: 20
                          ),)),
                       
                       ],
                      )
                
                  ],
                ),
              ),
             
              
            
          )

        );
      
    
  }
}