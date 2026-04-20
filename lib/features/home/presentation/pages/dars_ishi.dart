import 'package:exam/features/home/presentation/provider/homework_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DarsIshi extends StatefulWidget {
  const DarsIshi({super.key});

  @override
  State<DarsIshi> createState() => _DarsIshiState();
}

class _DarsIshiState extends State<DarsIshi> {
  final textcontroller = TextEditingController();
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          body: ListView.builder(
            itemCount: provider.tx.length,
            itemBuilder: (context, index) {
              return ListTile(title: ListTile(title: Text(provider.tx[index])));
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actions: [
                      Column(
                        mainAxisAlignment: .center,
                        children: [
                          Container(
                            height: 350,

                            child: Column(
                              children: [
                                TextField(
                                  controller: textcontroller,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: .end,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        provider.SendZametka(textcontroller.text);
                                      },
                                      child: Text('Send'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
