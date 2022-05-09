import 'package:app/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black,
         body: Container(
           color: Colors.black,
           child: SingleChildScrollView(
             child: Column(
               children: [
                 Container (



                   height: 370,
                   width: MediaQuery.of(context).size.width,


                   child: Padding(
                     padding: const EdgeInsets.only(
                      top: 200,
                     ),
                     child: Center(child: Text('UI', style: const TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold,),)),
                   ),

                 ),
             Container(
                 height: 57,
                 width: 390,
                 decoration: BoxDecoration(
                   color: Colors.white12,
                   shape: BoxShape.rectangle,
                   borderRadius: BorderRadius.circular(5)

                 ),
                 child: TextField(
                   style: TextStyle(color: Colors.white),
                   textAlign: TextAlign.left,
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       labelText: 'Email',
                       labelStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 15,

                       ),

                     )
                 )
             ),

                 SizedBox(height: 30,),

                 Container(
                       height: 57,
                     width: 390,
                     decoration: BoxDecoration(
                       color: Colors.white12,
                       shape: BoxShape.rectangle,
                         borderRadius: BorderRadius.circular(5)

                     ),
                     child: TextField(
                       style: TextStyle(color: Colors.white),
                       textAlign: TextAlign.left,
                       decoration: InputDecoration(
                         border: InputBorder.none,
                           labelText: 'Password',
                           labelStyle: TextStyle(
                               color: Colors.white,
                               fontSize: 15,

                       ),
                     )
                 ),

                 )
               ],
             ),
           ),
         ),
      bottomNavigationBar: Container(
        color: Colors.black,
        height: 170,
        child: Column(
          children: [
            Container(
              color: Colors.black,
              width: 390,
              height: 57,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  onSurface: Colors.blueAccent,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const signup()),
                  );
                },
                child: Text('Create An Account', style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,),

                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(9)
              ),
              width: 390,
              height: 57,
              child: TextButton(
                style: TextButton.styleFrom(

                  onSurface: Colors.blueAccent,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const homescreen()),
                  );
                },
                child: Text('SignIn', style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,),

                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
