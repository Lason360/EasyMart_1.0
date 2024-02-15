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
            stops: [0.05, 0.3, 0.5, 0.9],
            colors: [

            Colors.grey[900]!,
            Colors.green[900]!,
            Colors.green!,
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
              suffixIcon: const Icon(Icons.email),
              border: const OutlineInputBorder(),
            ),
            onChanged: (String emailValue){
              setState(() {
                email = emailValue;
                print(email);
              });
            },
          )
        ],)),
        SizedBox(height: 30),
        Form(child: Column(children: [
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
              labelText: 'Password',
              hintText: 'Enter Your Password',
              suffixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
            ),
            onChanged: (String password){
              setState(() {
                password = password;
                print(password);
              });
            },
          )
        ],))
        

        ],
      ),
    )
    );
  }
}