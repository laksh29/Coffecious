import 'package:coffecious/first.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffecious',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xffEFC3A4),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topRight,
                child: Image.asset("Assets/bean leaves.png"),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Coffecious",
                  style: TextStyle(
                      fontFamily: "inkfree",
                      fontSize: 60,
                      color: Color(0xff794028),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset("Assets/mug.png"),
              ),
              const SizedBox(height: 8),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 70, right: 70),
                  child: Text(
                    "Coffee has caffeine which acts as a brain stimulant and leads to alertness.",
                    style: GoogleFonts.poppins(
                        color: const Color(0xffBE7656),
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Align(
              //   alignment: Alignment.center,
              //   child: Image.asset("Assets/carosole dots.png"),
              // ),
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: const Color(0xffFFD7A3),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 10,
                      width: 30,
                      decoration: BoxDecoration(
                          color: const Color(0xffBE7656),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFD7A3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFD7A3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset("Assets/bean grp left.png"),
                      ),
                      const SizedBox(width: 30),
                      Image.asset("Assets/bean grp right.png")
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xffBE7656),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Color(0xffefb16d),
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
