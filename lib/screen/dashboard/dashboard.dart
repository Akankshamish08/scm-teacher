import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.red, // Set status bar color
        statusBarIconBrightness: Brightness.light, // Set status bar icon color
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Header Section
            Container(
              height:
                  MediaQuery.of(context).size.height * 0.14, // Header height
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.deepOrange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            ),

            // Main Content Section
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 15,
                    spreadRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.red, Colors.deepOrange],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage('assets/images/profile.png'),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ramesh Singh",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "ID: 7899089",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white70),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.settings,
                                      color: Colors.white),
                                  onPressed: () {
                                    // Handle settings click
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(Icons.notifications,
                                      color: Colors.white),
                                  onPressed: () {
                                    // Handle notifications click
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      _buildSection(
                        context,
                        "Profile",
                        [
                          {
                            "icon": 'assets/images/timetable.png',
                            "label": "Time Table"
                          },
                          {
                            "icon": 'assets/images/syllabus.png',
                            "label": "Syllabus"
                          },
                          {
                            "icon": 'assets/images/remark.png',
                            "label": "Remarks"
                          },
                        ],
                      ),
                      const SizedBox(height: 15),
                      _buildSection(
                        context,
                        "Academics",
                        [
                          {"icon": 'assets/images/marks.png', "label": "Add Marks"},
                          {
                            "icon": 'assets/images/homework.png',
                            "label": "Homework"
                          },
                          {
                            "icon": 'assets/images/attendance.png',
                            "label": "Attendance"
                          },
                          {
                            "icon": 'assets/images/profile.png',
                            "label": "View Student"
                          },
                        ],
                      ),
                      const SizedBox(height: 15),
                      _buildSection(
                        context,
                        "Sports",
                        [
                          {"icon": 'assets/images/games.png', "label": "Games"},
                          {
                            "icon": 'assets/images/event.png',
                            "label": "Events"
                          },
                        ],
                      ),
                      const SizedBox(height: 15),
                      _buildSection(
                        context,
                        "Communication",
                        [
                          {
                            "icon": 'assets/images/leave.png',
                            "label": "Apply Leaves"
                          },
                          {
                            "icon": 'assets/images/calendar.png',
                            "label": "Calender"
                          },
                          {
                            "icon": 'assets/images/details.png',
                            "label": "Circulars"
                          },
                          {
                            "icon": 'assets/images/image.png',
                            "label": "Images"
                          },
                          {
                            "icon": 'assets/images/news.png',
                            "label": "School News"
                          },
                        ],
                      ),
                      const SizedBox(height: 15),
                      _buildSection(
                        context,
                        "Transport",
                        [
                          {
                            "icon": 'assets/images/bus.png',
                            "label": "Bus Info"
                          },
                          {
                            "icon": 'assets/images/route.png',
                            "label": "Bus Route"
                          },
                        ],
                      ),
                      const SizedBox(height: 15),
                      // _buildSection(
                      //   context,
                      //   "Finance",
                      //   [
                      //     {
                      //       "icon": 'assets/images/fees.png',
                      //       "label": "Pay Fees"
                      //     },
                      //     {
                      //       "icon": 'assets/images/invoice.png',
                      //       "label": "Invoices"
                      //     },
                      //     {
                      //       "icon": 'assets/images/details.png',
                      //       "label": "Fee Details"
                      //     },
                      //   ],
                      // ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1),
                    ],
                  ),
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.white, Colors.white],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.home),
                              Text(
                                'Home',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.notifications),
                              Text('Notification')
                            ],
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.calendar_month),
                              Text('My Attendance')
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.browse_gallery),
                              Text('Gallery')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.38,
                    child: GestureDetector(
                      onTap: () {
                        print("This is tapped");
                      },
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.red.shade100,
                        child: Image.asset(
                          'assets/images/mark_attendance.png', // The path to your image
                          width: 45,
                          height: 45,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Method to Build Each Section
  Widget _buildSection(
      BuildContext context, String title, List<Map<String, dynamic>> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Wrap(
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.center,
                spacing: 12.0,
                runSpacing: 12.0,
                children: items
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: GestureDetector(
                          onTap: () {
                            // Handle item click
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Use Image.asset instead of Icon
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.red.shade100,
                                child: Image.asset(
                                  item['icon'], // The path to your image
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                item['label'],
                                softWrap: true,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAlertSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            "Alert",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Fees Due: Rs.1000",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Last Date: 20th Jan 2025",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle pay now click
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Pay Now",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
