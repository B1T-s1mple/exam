import 'package:flutter/material.dart';

class Homework2Screen extends StatefulWidget {
  const Homework2Screen({super.key});

  @override
  State<Homework2Screen> createState() => _Homework2ScreenState();
}

class _Homework2ScreenState extends State<Homework2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 25),
          SizedBox(
            height: 50,
            child: ListView.separated(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {},
                  child: Container(
                    width: 226,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFF4894FE).withValues(alpha: 0.1),
                    ),
                    child: Center(
                      child: Text(
                        'Upcoming schedule',
                        style: TextStyle(color: Color(0xFF4894FE)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 18);
              },
            ),
          ),
          SizedBox(height: 24),
          Expanded(
            child: ListView.separated(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Color(0xFFFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.white,
                                child: Image.asset('images/rasm14.png'),
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dr. Imran Syahir',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'General Doctor',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Divider(
                            color: const Color.fromARGB(182, 205, 205, 205),
                            indent: 0.2,
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            children: [
                              Icon(
                                Icons.date_range,
                                color: Colors.grey,
                                size: 16,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Sunday, 12 June',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(width: 100),
                              Icon(
                                Icons.access_time,
                                color: Colors.grey,
                                size: 16,
                              ),
                              SizedBox(width: 10),
                              Text(
                                '11:00 - 12:00 AM',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          height: 39,
                          width: 395,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Color(
                                0xFF4894FE,
                              ).withValues(alpha: 0.1),

                              shadowColor: null,
                            ),
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                'Detail',
                                style: TextStyle(color: Color(0xFF4894FE)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 20);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range, color: Colors.blue),
            label: 'home',
          ),
        ],
      ),
    );
  }
}
