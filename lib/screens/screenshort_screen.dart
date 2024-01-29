// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenShort extends StatefulWidget {
  const ScreenShort({Key? key}) : super(key: key);

  @override
  State<ScreenShort> createState() => _ScreenShortState();
}

class _ScreenShortState extends State<ScreenShort> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 60),
            child: Row(
              children: [
                Text(
                  'Screenshots',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 280, bottom: 10),
                        child: Text(
                          'Sort By',
                          style: GoogleFonts.poppins(color: Colors.grey),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                'Time(Old to new)',
                                style: GoogleFonts.poppins(),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey),
                              color: const Color(0xff00A693),
                            ),
                            child: Center(
                              child: Text(
                                'All notes',
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Text(
                      'Projects',
                      style: GoogleFonts.poppins(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          'Select project',
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 150),
                    child: Text(
                      'Tasks',
                      style: GoogleFonts.poppins(color: Colors.grey),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Select Task',
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Member',
                    style: GoogleFonts.poppins(color: Colors.grey),
                  ),
                  // ignore: prefer_const_constructors
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    // ignore: prefer_const_constructors
                    child: Icon(Icons.person),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Date',
                    style: GoogleFonts.poppins(color: Colors.grey),
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        '${selectedDate.toLocal()}'.split(' ')[0],
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Projects',
                    style: GoogleFonts.poppins(color: Colors.grey),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // ignore: prefer_const_constructors
                      border: Border.all(color: Color(0xff00A693)),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        '',
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Timezone',
                    style: GoogleFonts.poppins(color: Colors.grey),
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // ignore: prefer_const_constructors
                      border: Border.all(color: Color(0xff00A693)),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Organization',
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                  height: 90,
                  width: 90,
                  child: Image.asset('lib/images/screenshort.png')),
              Text(
                'Sorry! there is no screenshot.',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
