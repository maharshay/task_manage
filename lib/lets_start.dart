import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manage/calendar.dart';

class LetsStart extends StatefulWidget {
  @override
  _LetsStartState createState() => _LetsStartState();
}

class _LetsStartState extends State<LetsStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(),
              SizedBox(
                height: 450,
              ),
              Text(
                'Task',
                style: GoogleFonts.lexendDeca(
                  fontSize: 48,
                  letterSpacing: 1.5,
                  color: Color(0xff404040),
                ),
              ),
              Text(
                'MANAGEMENT',
                style: GoogleFonts.poppins(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: Color(0xff876af0),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Simply Dummy Text Of The Printing',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff737373),
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                'And Type setting',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff737373),
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                height: 60,
                //height: MediaQuery.of(context).size.height,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color(0xff8665FE),
                    ),
                  ),
                  child: Text(
                    "Let's Start",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      letterSpacing: 0.9,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Calendar()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
