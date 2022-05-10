import 'package:app/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
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
                  child: Center(child: Text('UI', style: const TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold,),)),
                ),

              ),
              Container(
                  height: 57,
                  width: 390,
                  decoration: BoxDecoration(


                  ),
                  child: TextField(
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(

                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.black,
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

                ),
                child: TextField(
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(

                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.black,
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
        color: Colors.white,
        height: 170,
        child: Column(
          children: [
            Container(

              width: 390,
              height: 57,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                color: Colors.black,
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const signup()),
                  );
                },
                child: Text('Create An Account', style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,),

                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2.0),
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
                        builder: (context) => const login()),
                  );
                },
                child: Text('SignIn', style: const TextStyle(
                  color: Colors.black,
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

