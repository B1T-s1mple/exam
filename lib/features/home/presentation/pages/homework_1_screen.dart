import 'package:flutter/material.dart';

class Homework1Screen extends StatefulWidget {
  const Homework1Screen({super.key});

  @override
  State<Homework1Screen> createState() => _Homework1ScreenState();
}

class _Homework1ScreenState extends State<Homework1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
         
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              width: double.infinity,
              height: 56,

              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        'Hi James',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset('images/rasm13.png'),
                ],
              ),
            ),
          ),
          SizedBox(height: 38),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              width: double.infinity,
              height: 138,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Color(0xFF4894FE),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'General Doctor',
                              style: TextStyle(color: Color(0xFFCBE1FF)),
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
                        Icon(Icons.date_range, color: Colors.white, size: 16),
                        SizedBox(width: 10),
                        Text(
                          'Sunday, 12 June',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 100),
                        Icon(Icons.access_time, color: Colors.white, size: 16),
                        SizedBox(width: 10),
                        Text(
                          '11:00 - 12:00 AM',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              height: 56,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_outlined),
                  fillColor: Color(0xFFFAFAFA),
                  filled: true,
                  hintText: 'Search doctor or health issue',
                  border: OutlineInputBorder(
                    gapPadding: 60,
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 60,
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    gapPadding: 60,
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  disabledBorder: OutlineInputBorder(
                    gapPadding: 60,
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 110,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24),
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Color(0xFFFAFAFA),
                      foregroundColor: Colors.white,
                      child: Icon(
                        Icons.coronavirus,
                        size: 24,
                        color: Color(0xFF4894FE),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Covid 19',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 48);
              },
            ),
          ),
          SizedBox(height: 23),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Text(
                  'Near Doctoe',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0D1B34),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              width: double.infinity,
              height: 145,
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
                              'Dr. Joseph Brostito',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Dental Specialist',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey,
                            ),
                            Text(
                              '1.2 KM',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
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
                          color: Color(0xFFFEB052),
                          size: 16,
                        ),
                        SizedBox(width: 10),
                        Text(
                          '4,8 (120 Reviews)',
                          style: TextStyle(color: Color(0xFFFEB052)),
                        ),
                        SizedBox(width: 100),
                        Icon(
                          Icons.access_time,
                          color: Color(0xFF4894FE),
                          size: 16,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Open at 17.00',
                          style: TextStyle(color: Color(0xFF4894FE)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue),
            label: 'home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.date_range), label: 'home'),
        ],
      ),
    );
  }
}


