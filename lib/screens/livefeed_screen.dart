// ignore_for_file: prefer_const_constructors

import 'package:apployee/custom_widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveFeed extends StatefulWidget {
  const LiveFeed({super.key});

  @override
  State<LiveFeed> createState() => _LiveFeedState();
}

class _LiveFeedState extends State<LiveFeed> {
  int selectedType = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 110, right: 1100),
              child: Text(
                '      Who Is Working',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orange[100],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.orange)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
                  child: Text(
                    ' Apploye is showing live feed for the members who are using the latest version of our desktop app (version: 3.1.6 or later).\n\n Let all your members use the latest version of your desktop app to see their live feed.',
                    style: GoogleFonts.poppins(fontSize: 13),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 40),
                  child: Text(
                    'Type',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  width: 135,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 11),
                  child: Text(
                    'Search Member',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 34, top: 10),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedType == 0;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: selectedType == 0
                                      ? Color(0xff00A693)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: Text(    
                                'Last 5 Min',
                                style: GoogleFonts.poppins(
                                    color: selectedType == 0
                                        ? Colors.white
                                        : Colors.black),
                              )),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                                color: selectedType == 1
                                    ? Color(0xff00A693)
                                    : Color(0xffffffff),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedType = 1;
                                  });
                                },
                                child: Text(
                                  'Live',
                                  style: GoogleFonts.poppins(
                                      color: selectedType == 1
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CustomTextField(
                    hinttext: 'Search by member name...',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 460),
                  child: Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Icon(
                            Icons.flip_camera_android_rounded,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Refresh',
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xff00A693)),
                      child: Center(
                        child: Text(
                          'Instand screenshort',
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Container(
                height: 370,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    SizedBox(
                        height: 200,
                        width: 800,
                        child: Image.asset('lib/images/list.png')),
                    Text(
                      'Seems no one was tracking in last 5 minutes',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
