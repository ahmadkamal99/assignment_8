import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/screen/accept.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  String email = "ahmad@gmail.com";
  String password = "ahmad123";
  int num1 = 0;
  int num2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Log in page")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 100,
              child: Image(image: AssetImage("images/2.png")),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
                onChanged: (value) {
                  if (email == value) {
                    num1 = 1;
                  } else {
                    num1 = 0;
                  }
                },
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Please enter your email",
                    label: Text(
                      "Email",
                      style: TextStyle(fontSize: 25),
                    ),
                    prefixIcon: Icon(Icons.people)),
                maxLines: 1,
                maxLength: 20,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
                onChanged: (value) {
                  if (password == value) {
                    num2 = 1;
                  } else {
                    num2 = 0;
                  }
                },

                // controller: TextEditingController(text: password),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Please enter your password",
                    label: Text(
                      "password",
                      style: TextStyle(fontSize: 25),
                    ),
                    prefixIcon: Icon(Icons.people)),
                maxLines: 1,
                maxLength: 20,
                textAlign: TextAlign.center,
                obscureText: true,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Text(
                                  "Can you please wait until we check your credentials?"),
                              // Icon(Ionicons.logo_android)
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                if (num1 == 1 && num2 == 1) {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return accept_page();
                                    },
                                  ));
                                } else {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return MyApp();
                                  }));
                                }
                              },
                              child: Text("I wil wait")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return MyApp();
                                  },
                                ));
                              },
                              child: Text("no i can't wait"))
                        ],
                      );
                    },
                  );
                },
                child: Text("log-in")),
          ],
        ),
      ),
    );
  }
}
