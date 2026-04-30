import 'package:exam/features/home/presentation/cubit/homework.dart';
import 'package:exam/features/home/presentation/cubit/hw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UygaVazifa extends StatefulWidget {
  const UygaVazifa({super.key});

  @override
  State<UygaVazifa> createState() => _UygaVazifaState();
}

class _UygaVazifaState extends State<UygaVazifa> {
  int sl = 0; 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              Container(
                width: 460,
                height: 640,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.4),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: BlocBuilder<Homework, Hw>(
                        builder: (context, state) {
                          return Column(
                            crossAxisAlignment: .center,

                            spacing: 20,
                            children: [
                              SizedBox(height: 17),
                              Row(
                                mainAxisAlignment: .center,
                                children: [
                                  Container(
                                    width: 400,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withValues(
                                            alpha: 0.4,
                                          ),
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Row(
                                        spacing: 10,
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            child: Icon(Icons.person),
                                          ),
                                          Column(
                                            mainAxisAlignment: .center,
                                            children: [
                                              Text('John Users'),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                    255,
                                                    100,
                                                    198,
                                                    103,
                                                  ).withValues(alpha: 0.3),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                    3.0,
                                                  ),
                                                  child: Text(
                                                    'Status:active',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromARGB(
                                                            255,
                                                            28,
                                                            57,
                                                            29,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withValues(
                                        alpha: 0.4,
                                      ),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  spacing: 25,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: state.check_1,
                                          onChanged: (value) {
                                            context.read<Homework>().check_f();
                                          },
                                        ),
                                        Text('Notifications'),
                                        Spacer(),
                                        CupertinoSwitch(
                                          value: state.switch_1,
                                          onChanged: (value) {
                                            context.read<Homework>().switch_f();
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: state.check_2,
                                          onChanged: (value) {
                                            context.read<Homework>().check_s();
                                          },
                                        ),
                                        Text('Emali Updates'),
                                        Spacer(),
                                        CupertinoSwitch(
                                          value: state.switch_2,
                                          onChanged: (value) {
                                            context.read<Homework>().switch_s();
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: state.check_3,
                                          onChanged: (value) {
                                            context.read<Homework>().check_t();
                                          },
                                        ),
                                        Text('Notifications'),
                                        Spacer(),
                                        CupertinoSwitch(
                                          value: state.switch_3,
                                          onChanged: (value) {
                                            context.read<Homework>().switch_t();
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 400,
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withValues(
                                        alpha: 0.4,
                                      ),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Text('Privacy Mode'),
                                      Spacer(),
                                      CupertinoSwitch(
                                        value: state.switch_booss,
                                        onChanged: (value) {
                                          context
                                              .read<Homework>()
                                              .Switch_booss();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Container(
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withValues(
                                        alpha: 0.4,
                                      ),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Text('Gender:'),
                                        SizedBox(width: 40),
                                        Radio(
                                          value: 1,
                                          onChanged: (value) {
                                            context.read<Homework>().radio_add(
                                              value!,
                                            );
                                          },
                                          groupValue: state.radio_a,
                                        ),
                                        Text('Male'),
                                        SizedBox(width: 10),
                                        Radio(
                                          value: 2,
                                          onChanged: (value) {
                                            context.read<Homework>().radio_add(
                                              value!,
                                            );
                                          },
                                          groupValue: state.radio_a,
                                        ),
                                        Text('Famela'),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                      ),
                                      child: Divider(color: Colors.grey),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Text('Theme Color:'),
                                        SizedBox(width: 20),
                                        DropdownButton(
                                          elevation: 0,
                                          underline: null,
                                          items: [
                                            DropdownMenuItem(
                                              child: Text('Blue'),
                                            ),
                                          ],
                                          onChanged: (value) {},
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                              Container(
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withValues(
                                        alpha: 0.4,
                                      ),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Icon(Icons.favorite, color: Colors.red),
                                        SizedBox(width: 10),
                                        Text('Likes:  128     '),
                                        Slider(
                                          max: 100,
                                          min: 0,
                                          value: state.slider.toDouble(),
                                          onChanged: (value) {
                                            sl = state.slider.toInt();
                                            context.read<Homework>().Slider_add(
                                              value,
                                            );
                                          },
                                        ),
                                        SizedBox(width: 10),
                                        Text('$sl'),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                      ),
                                      child: Divider(color: Colors.grey),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Text('Quantity:'),
                                        SizedBox(width: 15),
                                        Container(
                                          width: 95,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  context
                                                      .read<Homework>()
                                                      .son_add();
                                                },
                                                child: Container(
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          5,
                                                        ),
                                                  ),

                                                  child: Center(
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Text(state.son.toString()),
                                              Spacer(),
                                              InkWell(
                                                onTap: () {
                                                  context
                                                      .read<Homework>()
                                                      .son_remove();
                                                },
                                                child: Container(
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          5,
                                                        ),
                                                  ),

                                                  child: Center(
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
