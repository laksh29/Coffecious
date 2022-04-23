import 'dart:ffi';

import 'package:coffecious/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFCE7D9),
        automaticallyImplyLeading: false,
        actions: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Image.asset(
                  "Assets/menu.png",
                  width: 30,
                  height: 30,
                ),
                const Spacer(),
                const Text(
                  "Coffeecious",
                  style: TextStyle(
                    fontFamily: "inkfree",
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xff4B1F0E),
                  ),
                ),
                const Spacer(),
                Image.asset(
                  "Assets/bag.png",
                  width: 30,
                  height: 30,
                )
              ],
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xffFCE7D9),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.only(left: 20),
              height: 41,
              width: 310,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xfffcdbbf),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    size: 16,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Search",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 15),
                  )
                ],
              ),
            ),
            Container(
              height: 600,
              width: 390,
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Top Curations !",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 137,
                    margin: EdgeInsets.only(top: 10),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: productList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 106,
                          width: 60,
                          // padding: EdgeInsets.only(left: 40),
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Column(
                            children: [
                              Image.asset(
                                productList[index]["imgPath"]!,
                                width: 69,
                                height: 80,
                              ),
                              SizedBox(height: 5),
                              Text(
                                productList[index]["name"]!,
                                style: GoogleFonts.poppins(
                                    fontSize: 17, color: Color(0xff794028)),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Spotlight!",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 315,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: spotlight.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 315,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Color(0xffBE7656),
                              borderRadius: BorderRadius.circular(50)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  spotlight[index]["imgPath"]!,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 50),
                                child: Text(
                                  spotlight[index]["name"]!,
                                  style: GoogleFonts.poppins(
                                      fontSize: 15, color: Color(0xff794028)),
                                ),
                              ),
                              SizedBox(height: 5),
                              Stack(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      spotlight[index]["cal"]!,
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff794028),
                                          fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 88),
                                    child: Icon(
                                      Icons.info_outline,
                                      size: 10,
                                      color: Color(0xff794028),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Stack(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    spotlight[index]["price"]!,
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff4B1F0E), fontSize: 15),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 140),
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xffE2A379)),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        "+",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff794028),
                                            fontSize: 30),
                                      ),
                                    ))
                              ])
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 68,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffFCE7D9),
        child: Container(
          padding: EdgeInsets.only(left: 30, right: 30),
          height: 68,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Color(0xfffcdbbf)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "Assets/home filled rounded.png",
                width: 30,
                height: 30,
              ),
              Spacer(),
              Image.asset("Assets/heart.png", width: 30, height: 30),
              Spacer(),
              Image.asset("Assets/menu 4 box rounded filled.png",
                  width: 30, height: 30),
              Spacer(),
              Image.asset("Assets/user filled rounded.png",
                  width: 30, height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
