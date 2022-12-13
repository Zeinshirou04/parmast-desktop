import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Playfair Display'),
      home: Scaffold(appBar: null, body: MyLoginPage()),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background-login-image.jpg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to ParMast",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 34, 0),
                          child: Text(
                            "Email",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                      Padding(
                          padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                          child: Text(
                            ":",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                      Padding(
                          padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                          child: SizedBox(
                            width: 170,
                            height: 30,
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 2),
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(2, 0, 2, 16),
                                labelStyle: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                hintText: 'Enter your email',
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 3, 0),
                          child: Text(
                            "Password",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                      Padding(
                          padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                          child: Text(
                            ":",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                      Padding(
                          padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                          child: SizedBox(
                            width: 170,
                            height: 30,
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 2),
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(2, 0, 2, 16),
                                labelStyle: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                hintText: 'Enter your Password',
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 3, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Login'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
