import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Form(child: Column(children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email',
              hintText: 'Enter email',
              suffixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
              fillColor: Colors.amber,
            ),
            onChanged: (String emailValue){
              setState(() {
                email = emailValue;
              });
            },
          )
        ],
        )
        ),
        const SizedBox(height: 30),
        Form(child: Column(children: [
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
              labelText: 'Password',
              hintText: 'Enter Your Password',
              suffixIcon: Icon(Icons.key),
              border: OutlineInputBorder(),
            ),
            onChanged: (String passwordValue){
              setState(() {
                password = passwordValue;
              });
            },
          )
        ],)
        ),
        
        ],
      ),
    ),
     floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              // Add your logic for the first floating action button here
            },
            heroTag: "LoginButton",
            tooltip: 'Login',
            label: const Text("Login"),
            backgroundColor: Colors.lightGreenAccent[400],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          SizedBox(height: 16), 
          // Adjust the spacing between the floating action buttons
          FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const LoginPage()));// Add your logic for the second floating action button here
            },
            heroTag: "RegisterButton",
            tooltip: 'Register',
            label: const Text("Register"),
            backgroundColor: Colors.lightGreenAccent[400],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
  }
}