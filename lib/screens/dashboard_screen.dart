// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables
import 'package:apployee/custom_widget/graph_container.dart';
import 'package:apployee/custom_widget/rating_button.dart';
import 'package:apployee/utilities/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.heightCalc(context, 25),
                        top: Dimensions.heightCalc(context, 20)),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Dashboard',
                            style: GoogleFonts.poppins(
                              fontSize: 23,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.widthCalc(context, 10),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: Dimensions.heightCalc(context, 20)),
                    child: Stack(children: [
                      Container(
                        height: Dimensions.widthCalc(context, 40),
                        width: Dimensions.widthCalc(context, 220),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 8),
                        child: Row(
                          children: [
                            Container(
                              height: Dimensions.widthCalc(context, 30),
                              width: Dimensions.widthCalc(context, 70),
                              decoration: BoxDecoration(
                                  //border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              // ignore: prefer_const_constructors
                              child: Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  // ignore: prefer_const_constructors
                                  Icon(Icons.person_2_outlined,
                                      color: Colors.grey, size: 15),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  // ignore: prefer_const_constructors
                                  Text(
                                    'Me',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.widthCalc(context, 15),
                            ),
                            Container(
                              height: Dimensions.widthCalc(context, 30),
                              width: Dimensions.widthCalc(context, 120),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xff00A693)),
                              // ignore: prefer_const_constructors
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    // ignore: prefer_const_constructors
                                    Icon(Icons.account_tree_rounded,
                                        color: Colors.white, size: 14),
                                    SizedBox(
                                      width: Dimensions.widthCalc(context, 5),
                                    ),
                                    // ignore: prefer_const_constructors
                                    Text(
                                      'Organisation',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    width: 560,
                  ),
                  Stack(children: [
                    Container(
                      height: 30,
                      width: 315,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 8),
                      child: Row(
                        children: [
                          Text(
                            'Mon, January 01 - Sun, January 07, 2024',
                            style: GoogleFonts.poppins(
                                color: Colors.blue, fontSize: 13),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.live_help,
                            color: Colors.blue,
                            size: 13,
                          )
                        ],
                      ),
                    )
                  ])
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Dimensions.heightCalc(context, 30),
                    left: Dimensions.heightCalc(context, 37)),
                child: Row(
                  children: [
                    Stack(children: [
                      Container(
                        height: Dimensions.heightCalc(context, 270),
                        width: Dimensions.widthCalc(context, 610),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                      ),
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: EdgeInsets.only(
                            left: Dimensions.heightCalc(context, 25),
                            top: Dimensions.heightCalc(context, 20)),
                        child: Row(
                          children: [
                            // ignore: sized_box_for_whitespace
                            Container(
                              height: Dimensions.heightCalc(context, 20),
                              width: Dimensions.widthCalc(context, 20),
                              child: Image(
                                image: AssetImage('lib/images/trophyy.png'),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Top 5 Members Based On Time Logged',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff00A693),
                                    fontSize: 18))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70, left: 240),
                        child: Image.asset('lib/images/flagg.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: Dimensions.heightCalc(
                              context,
                              220,
                            ),
                            left: Dimensions.heightCalc(context, 210)),
                        child: Text('There is no data to be displayed!',
                            style: GoogleFonts.poppins(color: Colors.grey)),
                      )
                    ]),
                    SizedBox(
                      width: Dimensions.widthCalc(context, 20),
                    ),
                    Stack(children: [
                      Container(
                        height: Dimensions.heightCalc(context, 270),
                        width: Dimensions.widthCalc(context, 610),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                      ),
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: EdgeInsets.only(
                            left: Dimensions.heightCalc(context, 20),
                            top: Dimensions.heightCalc(context, 20)),
                        child: Row(
                          children: [
                            // ignore: sized_box_for_whitespace
                            Container(
                              height: Dimensions.heightCalc(context, 20),
                              width: Dimensions.widthCalc(context, 20),
                              child: Image(
                                image: AssetImage('lib/images/trophyy.png'),
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.widthCalc(context, 5),
                            ),
                            Text('Top 5 Members Based On Activity',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff00A693),
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70, left: 250),
                        child: Image.asset('lib/images/flagg.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: Dimensions.heightCalc(
                              context,
                              220,
                            ),
                            left: Dimensions.heightCalc(context, 210)),
                        child: Text('There is no data to be displayed!',
                            style: GoogleFonts.poppins(color: Colors.grey)),
                      )
                    ]),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Row(
                      children: [
                        Stack(children: [
                          Column(
                            children: [
                              Container(
                                height: Dimensions.heightCalc(context, 230),
                                width: Dimensions.widthCalc(context, 300),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 155),
                                child: Text(
                                  '  Total hours this week',
                                  style:
                                      GoogleFonts.poppins(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: Dimensions.heightCalc(context, 20),
                                    top: Dimensions.heightCalc(context, 20)),
                                child: Row(
                                  children: [
                                    Text('Total Hours',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16, color: Colors.grey)),
                                    SizedBox(
                                      width: Dimensions.widthCalc(context, 120),
                                    ),
                                    RatingButton()
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 190),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text('    0h  00m',
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: GraphContainer(),
                              )
                            ],
                          )
                        ]),
                        SizedBox(
                          width: 1,
                        ),
                        Stack(children: [
                          Column(
                            children: [
                              Container(
                                height: Dimensions.heightCalc(context, 230),
                                width: Dimensions.widthCalc(context, 300),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 100),
                                child: Text(
                                  '  Most Hour Logged Project',
                                  style:
                                      GoogleFonts.poppins(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 220),
                            child: RatingButton(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40, left: 5),
                            child: Text('    0h  00m',
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 85, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  height: 90,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[100]),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 60, top: 20),
                                        child: Text(
                                          'Last Week',
                                          style: GoogleFonts.poppins(
                                              fontSize: 13, color: Colors.grey),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 69, top: 3),
                                        child: Text(
                                          '0h  00m',
                                          style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  height: 90,
                                  width: 23,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey[100],
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Container(
                                  height: 90,
                                  width: 23,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey[100],
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),
                        SizedBox(
                          width: 20,
                        ),
                        Stack(children: [
                          Column(
                            children: [
                              Container(
                                height: Dimensions.heightCalc(context, 230),
                                width: Dimensions.widthCalc(context, 300),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 155),
                                child: Text(
                                  '  Most Project Activity',
                                  style:
                                      GoogleFonts.poppins(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 225),
                            child: RatingButton(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40, left: 20),
                            child: Text(
                              '0%',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 90, left: 20),
                            child: Row(
                              children: [
                                Container(
                                  height: 90,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[100]),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, right: 70),
                                        child: Text(
                                          'Last Week',
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey, fontSize: 13),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 110),
                                        child: Text(
                                          '0%',
                                          style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  height: 90,
                                  width: 23,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey[100],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 90,
                                  width: 23,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey[100],
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),
                        SizedBox(
                          width: 5,
                        ),
                        Stack(children: [
                          Column(
                            children: [
                              Container(
                                height: Dimensions.heightCalc(context, 230),
                                width: Dimensions.widthCalc(context, 300),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 185),
                                child: Text(
                                  '  Today`s activity',
                                  style:
                                      GoogleFonts.poppins(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: Dimensions.heightCalc(context, 0),
                                    top: Dimensions.heightCalc(context, 20)),
                                child: Row(
                                  children: [
                                    Text('All Projects',
                                        style: GoogleFonts.poppins(
                                            fontSize: 16, color: Colors.grey)),
                                    SizedBox(
                                      width: Dimensions.widthCalc(context, 100),
                                    ),
                                    RatingButton()
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 160),
                                child: Text('      No Activity',
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 45, top: 50),
                                child: Container(
                                  height: 13,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[300]),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 128, top: 15),
                                child: Text(
                                  ' January 4, 2024',
                                  style:
                                      GoogleFonts.poppins(color: Colors.grey),
                                ),
                              )
                            ],
                          )
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 30),
                      child: Container(
                        height: Dimensions.heightCalc(context, 230),
                        width: Dimensions.widthCalc(context, 610),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                      ),
                    ),
                    Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 30),
                        child: Container(
                          height: Dimensions.heightCalc(context, 230),
                          width: Dimensions.widthCalc(context, 610),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: EdgeInsets.only(
                            left: Dimensions.heightCalc(context, 55),
                            top: Dimensions.heightCalc(context, 50)),
                        child: Row(
                          children: [
                            // ignore: sized_box_for_whitespace
                            Text(
                              'Top Assigned Projects',
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 90, left: 55),
                        child: Container(
                          height: 140,
                          width: 550,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 0, left: 0),
                            child: Column(
                              children: [
                                SizedBox(
                                    height: 100,
                                    width: 100,
                                    child:
                                        Image.asset('lib/images/project.png')),
                                Text(
                                  'There is no data to be displayed!',
                                  style: GoogleFonts.poppins(
                                      color: Colors.grey[500]),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),

                // ignore: prefer_const_constructors
                Padding(
                  padding: EdgeInsets.only(
                      left: Dimensions.heightCalc(context, 55),
                      top: Dimensions.heightCalc(
                        context,
                        50,
                      )),
                  child: Row(
                    children: [
                      // ignore: sized_box_for_whitespace
                      Text(
                        'Activity Report',
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: Dimensions.widthCalc(context, 10),
                      ),
                      Text('  All Projects',
                          style: GoogleFonts.poppins(
                              color: Colors.grey, fontSize: 15)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 65, left: 280),
                  child: SizedBox(
                      height: 150,
                      width: 120,
                      child: Image.asset('lib/images/report.png')),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: Dimensions.heightCalc(
                        context,
                        210,
                      ),
                      left: Dimensions.heightCalc(context, 245)),
                  child: Text(
                    'There is no data to be displayed!',
                    style: GoogleFonts.poppins(color: Colors.grey),
                  ),
                )
              ]),
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 10),
                  child: Row(
                    children: [
                      Container(
                        height: Dimensions.heightCalc(context, 240),
                        width: Dimensions.widthCalc(context, 590),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            height: Dimensions.heightCalc(context, 240),
                            width: Dimensions.widthCalc(context, 650),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: Dimensions.heightCalc(context, 20),
                              top: Dimensions.heightCalc(
                                context,
                                20,
                              )),
                          child: Row(
                            children: [
                              // ignore: sized_box_for_whitespace
                              Text(
                                'TimeSheet',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: Dimensions.widthCalc(context, 10),
                              ),
                              Text('  All Projects',
                                  style: GoogleFonts.poppins(
                                      color: Colors.grey, fontSize: 15)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 280),
                          child: SizedBox(
                              height: 140,
                              width: 120,
                              child: Image.asset('lib/images/timesheet.png')),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: Dimensions.heightCalc(
                                context,
                                185,
                              ),
                              left: Dimensions.heightCalc(context, 245)),
                          child: Text(
                            'There is no data to be displayed!',
                            style: GoogleFonts.poppins(color: Colors.grey),
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
                // ignore: prefer_const_constructors
                Padding(
                  padding: EdgeInsets.only(
                      left: Dimensions.heightCalc(context, 55),
                      top: Dimensions.heightCalc(context, 30)),
                  child: Row(
                    children: [
                      // ignore: sized_box_for_whitespace
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 275),
                            child: Text(
                              'Ongoing Tasks',
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                              height: 150,
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 140),
                                child: Image.asset('lib/images/task.png'),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 180),
                            child: Text(
                              'There is no data to be displayed!',
                              style: GoogleFonts.poppins(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
