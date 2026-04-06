import 'package:exam/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HamoOrig extends StatefulWidget {
  const HamoOrig({super.key});

  @override
  State<HamoOrig> createState() => _HamoOrigState();
}

class _HamoOrigState extends State<HamoOrig> {
  List<String> ls = ['Today', 'Week', 'Month', 'Year'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 19,
                    backgroundColor: Colors.pinkAccent,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: () {
                          
                        },
                        child: CircleAvatar(
                          radius: 16,
                          foregroundImage: AssetImage('images/rasm6.jpg'),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {},
                    child: Container(
                      width: 107,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.grey.shade200),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.primary_color,
                          ),
                          Text('October'),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: AppColors.primary_color,
                      size: 32,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Account Balance', style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$9400',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 23),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 164,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Color(0xFF00A86B),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(children: [Image.asset('images/rasm7.png')]),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Income',
                                  style: TextStyle(color: Colors.white),
                                ),

                                Text(
                                  '\$5000',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    width: 164,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Color(0xFFFD3C4A),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(children: [Image.asset('images/rasm8.png')]),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Expenses',
                                  style: TextStyle(color: Colors.white),
                                ),

                                Text(
                                  '\$1200',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Spend Frequency',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(
                  width: 500,
                  height: 200,
                  child: Image.asset('images/rasm9.png', fit: BoxFit.contain),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {},
                    child: Container(
                      width: 90,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.yellow.shade200,
                      ),
              
                    
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ls[0],
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.amber),
                          ),
                        ],
                      ),
                    ),
                  ),
                    InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {},
                    child: Container(
                      width: 90,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                 
                      ),
              
                    
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ls[1],
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                    InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {},
                    child: Container(
                      width: 90,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                       
                      ),
              
                    
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ls[2],
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                    InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {},
                    child: Container(
                      width: 90,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        
                      ),
              
                    
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ls[3],
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Transcation',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {},
                    child: Container(
                      width: 90,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.deepPurpleAccent.withValues(alpha: 0.3),
                      ),

                      margin: EdgeInsets.symmetric(horizontal: 13),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'See All',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AppColors.primary_color),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 356,
              height: 60,
              child: Row(
                children: [
                  Column(children: [Image.asset('images/rasm10.png')]),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Shopping', style: TextStyle(fontSize: 17)),
                      Text(
                        'Buy some grocery',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 97, 95, 95),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '-\$120',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '10:00 AM',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 97, 95, 95),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: 356,
              height: 60,
              child: Row(
                children: [
                  Column(children: [Image.asset('images/rasm11.png')]),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Subscription', style: TextStyle(fontSize: 17)),
                      Text(
                        'Disney+ Annual..',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 97, 95, 95),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '-\$80',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '03:30 PM',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 97, 95, 95),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: 356,
              height: 60,
              child: Row(
                children: [
                  Column(children: [Image.asset('images/rasm12.png')]),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Food', style: TextStyle(fontSize: 17)),
                      Text(
                        'Buy a ramen',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 97, 95, 95),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '-\$32',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '07:30 PM',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 97, 95, 95),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 39,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30),
        ),
        backgroundColor: AppColors.primary_color,
        child: Icon(Icons.add, color: Colors.white, size: 34),
        elevation: 0,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey.shade300,
        selectedItemColor: AppColors.primary_color,
        selectedLabelStyle: TextStyle(color: AppColors.primary_color),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        iconSize: 32,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp, color: AppColors.primary_color),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_exchange, color: Colors.grey.shade300),
            label: 'Transaction',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse_outlined, color: Colors.grey.shade300),
            label: 'Budget',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded, color: Colors.grey.shade300),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
