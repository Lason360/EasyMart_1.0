
import "package:easy_mart/ui/LoginSignupPage.dart";
import "package:flutter/material.dart";
import "package:easy_mart/ui/InventoryView.dart";

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      body: Center( 

        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
      
          gradient: LinearGradient(

            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0.05, 0.3, 0.5, 0.9],
            colors: [

            Colors.grey[900]!,
            Colors.green[900]!,
            Colors.green,
            Colors.lightGreenAccent[400]!,
            ],
          ),
        ),

        child: const Column(

          mainAxisAlignment: MainAxisAlignment.center,

        ),
      ),
      ),
      floatingActionButton: FloatingActionButton.extended(

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );},
        tooltip: 'Go to login sign up page',
        label: const Text("Hey Get Started now"),
        backgroundColor: Colors.lightGreenAccent[400],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        //hi
        
        
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      
    );
  }
}



